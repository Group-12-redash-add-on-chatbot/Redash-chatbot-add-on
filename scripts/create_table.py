# create_table.py
import psycopg2

def execute_sql_from_file(conn, filepath):
    with open(filepath, 'r') as file:
        sql = file.read()
    with conn.cursor() as cursor:
        try:
            cursor.execute(sql)
            conn.commit()
            print("Table created successfully")
        except psycopg2.Error as e:
            print(f"An error occurred: {e}")
            conn.rollback()
            return False
    return True
