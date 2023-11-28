import mysql.connector


def get_db_connection():
    return mysql.connector.connect(
        host="your_mysql_host",
        user="your_mysql_user",
        password="your_mysql_password",
        database="your_database_name"
    )


def create_table():
    db = get_db_connection()
    cursor = db.cursor()

    create_table_query = """
        CREATE TABLE IF NOT EXISTS books (
            id INT AUTO_INCREMENT PRIMARY KEY,
            title VARCHAR(255) NOT NULL,
            author VARCHAR(255) NOT NULL,
            year INT,
            gender VARCHAR(255),
            description TEXT,
            pages INT
        )
    """

    cursor.execute(create_table_query)
    db.commit()
    db.close()
