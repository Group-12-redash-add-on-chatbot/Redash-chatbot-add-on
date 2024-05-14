from flask import request, jsonify

import os
from sqlalchemy import create_engine, inspect

from redash.handlers.base import (
    BaseResource
)
import os
from openai import OpenAI
VARIABLE_KEY = os.environ.get("OPENAI_API_KEY")
client = OpenAI(
  api_key=VARIABLE_KEY
)


# Gather database connection parameters from environment variables
username = os.getenv("DB_USERNAME", "postgres")
password = os.getenv("DB_PASSWORD", "postgres")
host = os.getenv("DB_HOST", "postgres")
port = os.getenv("DB_PORT", "5432")
database = os.getenv("DB_DATABASE", "postgres")

# Construct the database connection URL
database_url = f"postgresql://{username}:{password}@{host}:{port}/{database}"

# Create an engine instance
engine = create_engine(database_url)

def get_table_names(engine):
    """Return a list of table names in the database."""
    inspector = inspect(engine)
    return [f'"{table_name}"' for table_name in inspector.get_table_names()]

def get_column_names(engine, table_name):
    """Return a list of column names for a specified table."""
    inspector = inspect(engine)
    try:
        columns = inspector.get_columns(table_name)
        return [f'"{column["name"]}"' for column in columns]
    except Exception as e:
        print(f"Error fetching columns for table {table_name}: {e}")
        return []

def get_database_info(engine):
    """Return a list of dictionaries with table names and their corresponding columns."""
    inspector = inspect(engine)
    table_dicts = []
    for table_name in inspector.get_table_names():
        column_names = get_column_names(engine, table_name)
        table_dicts.append({"table_name": table_name, "column_names": column_names})
    return table_dicts

class ChatResource(BaseResource):
    def post(self):
        try:
            value = request.get_json()
            question = value.get('question')

            # Fetch updated database info if your schema changes frequently
            db_info = get_database_info(engine)
            db_info_str = f"Database tables and columns: {db_info}"

            # Making the completion request to OpenAI
            completion = client.chat.completions.create(
                model="gpt-3.5-turbo",
                messages=[
                    {"role": "system", "content": f"You are a redash visualization assistant, skilled in SQL queries and data visualization. Here's the current database schema: {db_info_str}. You are only required to give answers for query and data visualization questions.If asked about a topic outside these two, make sure to respond that you have no information regarding that question. I am only here to help you with your query and data visualization questions. When asked to write queries, only provide the code without descriptions."},
                    {"role": "user", "content": question}
                ]
            )

            # Extracting the answer from the completion
            answer = completion.choices[0].message.content
            response_data = {"answer": answer}
            return jsonify(response_data), 200
        except Exception as error:
            print(f"An error occurred: {error}")
            return jsonify({"error": str(error)}), 500