import mysql.connector

def create_db_connection():
    # Replace with your Amazon RDS database credentials
    config = {
        'host': 'localhost',
        'user': 'your_username',
        'password': 'your_password',
        'database': 'your_database_name'
    }
    try:
        connection = mysql.connector.connect(**config)

        if connection.is_connected():
            print("Successfully connected to the database")

        # Create a cursor object using the connection
        cursor = connection.cursor()

        # Example query
        cursor.execute("SELECT DATABASE()")
        db_name = cursor.fetchone()
        print("Connected to database:", db_name)

    except mysql.connector.Error as err:
        print(f"Error: {err}")
    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("Connection closed")
