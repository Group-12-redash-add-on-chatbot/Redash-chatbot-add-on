# db_connection.py
import os
import psycopg2
from dotenv import load_dotenv
# Load environment variables from .env file
load_dotenv()

def get_connection():
    """Establishes a database connection using environment variables."""
    return psycopg2.connect(
        dbname=os.getenv('DB_NAME', 'youtube'),
        user=os.getenv('DB_USER', 'postgres'),
        password=os.getenv('DB_PASSWORD', 'postgres'),
        host=os.getenv('DB_HOST', 'localhost'),
        port=os.getenv('DB_PORT', 5432)  # Defaulting to the typical PostgreSQL port
    )

def close_connection(conn):
    """Closes the given database connection."""
    if conn:
        conn.close()
