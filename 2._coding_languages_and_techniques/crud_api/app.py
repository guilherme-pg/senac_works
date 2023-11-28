from flask import Flask, render_template
from CRUD import insert_book, fetch_all_books, fetch_some_book, update_book, delete_book


app = Flask(__name__)


@app.route("/",  methods=['GET'])
def home():
    return render_template("home.html")


@app.route("/collection",  methods=['GET'])
def collection():
    return render_template("collection.html")


@app.route("/fetch", methods=['GET'])
def fetch_data():
    return "<p>fetch</p>"


@app.route("/insert", methods=['POST'])
def insert_data():
    return "<p>inserted</p>"


@app.route("/update", methods=['PUT'])
def update_data():
    return "<p>UPDATED</p>"


@app.route("/delete", methods=['DELETE'])
def delete_data():
    return "<p>DELETED</p>"


if __name__ == "__main__":
    app.run(port=8080, debug=True)
