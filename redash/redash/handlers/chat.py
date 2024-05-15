from flask import request, jsonify
from langchain_openai import ChatOpenAI
from langchain_core.prompts import ChatPromptTemplate
from redash.handlers.base import BaseResource
from sqlalchemy import create_engine
import os
import pandas as pd

# Connect to postgres Database
def connect_to_database(database_name, table_name, connection_params=None):
    try:
        if connection_params is None:
            connection_params = {
                "host": "postgres",
                "user": "postgres",
                "password": ";",
                "port": "5432",
                "database": database_name
            }
        engine = create_engine(f"postgresql+psycopg2://{connection_params['user']}:{connection_params['password']}@{connection_params['host']}:{connection_params['port']}/{connection_params['database']}")
        sql_query = f'SELECT * FROM {table_name}'
        df = pd.read_sql(sql_query, con=engine)
        return df
    except Exception as e:
        print(f"Error connecting to database: {e}")
        return None

# Calling tables from the database
df_cities = connect_to_database(database_name='Youtube_Analystics', table_name='viewers_per_city')
df_gender = connect_to_database(database_name='Youtube_Analystics', table_name='gender_data')
df_age = connect_to_database(database_name='Youtube_Analystics', table_name='Viewer_age')
df_new_and_returning = connect_to_database(database_name='Youtube_Analystics', table_name='new_and_returning')

# Initiating OpenAI Model
VARIABLE_KEY = os.environ.get("OPENAI_API_KEY")
llm = ChatOpenAI(
    api_key=VARIABLE_KEY,
    model="gpt-3.5-turbo",
    temperature=0.7,
)

# Prompt for the model
prompt = ChatPromptTemplate.from_template("""            
        You are a redash visualization assistant, skilled in SQL queries and data visualization. 
        You are only required to give answers for query and data visualization questions.
        If asked about a topic outside these two, make sure to respond that you have no information regarding that question.
        I am only here to help you with your query and data visualization questions. When asked to write queries, only provide the code without descriptions.
        use the following tables:
        - viewers_per_city {viewer_cities}
        - gender_data {gender_data}
        - age {age}
        - new_and_returning {new_and_returning}
     
        Please ansewer the user question {user_question} by SQL query format
        

""")

#Invoking OpenAI model to answer user questionss
class ChatResource(BaseResource):
    def post(self):
        try:
            value = request.get_json()
            question = value.get('question')
            chain = prompt | llm
            answer = chain.invoke({"user_question": question,
                                   "viewer_cities": df_cities,
                                   "gender_data":df_gender,
                                   "gender_data":df_new_and_returning
                                   
                                   
                                   })
            response_data = {"answer": answer.content}
            return jsonify(response_data), 200
        except Exception as error:
            print(error)
            return jsonify({"error": "An error occurred"}), 500

