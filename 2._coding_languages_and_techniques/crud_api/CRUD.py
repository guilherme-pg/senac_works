from db_connection import get_db_connection


def insert_book():
    try:
        # Get data from the request
        data = request.json
        title = data['title']
        author = data['author']
        year = data['year']
        gender = data['gender']
        description = data['description']
        pages = data['pages']

        # Insert data into the table
        insert_query = """
                INSERT INTO books (title, author, year, gender, description, pages)
                VALUES (%s, %s, %s, %s, %s, %s)
            """

        cursor.execute(insert_query, (title, author, year, gender, description, pages))
        db.commit()

        return jsonify({'message': 'Book added successfully!'})

    except Exception as e:
        return jsonify({'error': str(e)})


def fetch_all_books():
    db = get_db_connection()
    cursor = db.cursor()

    select_query = "SELECT * FROM books"
    cursor.execute(select_query)
    books = cursor.fetchall()

    db.close()

    return books


def fetch_some_book():
    return "INSERTED"


def update_book():
    return "INSERTED"


def delete_book():
    return "INSERTED"
