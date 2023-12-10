# app.py (Python)

from flask import Flask, render_template, flash, request, redirect, url_for, g
import sqlite3
import re


app = Flask(__name__)
app.secret_key = '123123'


# Configuração do banco de dados SQLite
DB_NAME = 'database.db'


def create_table():
    conn = sqlite3.connect(DB_NAME)
    cursor = conn.cursor()
    cursor.execute('''
        CREATE TABLE IF NOT EXISTS users (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            cpf TEXT
        )
    ''')
    conn.commit()
    conn.close()


@app.route('/')
def index():
    try:
        create_table()
        with sqlite3.connect(DB_NAME) as conn:
            cursor = conn.cursor()
            cursor.execute('SELECT * FROM users')
            users = cursor.fetchall()

        return render_template('index.html', users=users)
    
    except Exception as e:
        # Log the error or display a flash message
        msg = f"Error fetching data from the database: {str(e)}"
        return render_template('index.html', msg=msg, users=[])


@app.route('/add_user', methods=['POST'])
def add_user():
    try:
        name = request.form['name']
        cpf = request.form['cpf']

        # Validating CPF using a regular expression
        cpf_pattern = re.compile(r'^(\d{3}\.\d{3}\.\d{3}-\d{2})$')
        if not cpf_pattern.match(cpf):
            msg = "CPF inválido!"
            return redirect(url_for('index', msg=msg))

        conn = sqlite3.connect(DB_NAME)
        cursor = conn.cursor()
        cursor.execute('INSERT INTO users (name, cpf) VALUES (?, ?)', (name, cpf))
        conn.commit()
        conn.close()

        msg = f"{name} adicionad@ com sucesso!"
        return redirect(url_for('index', msg=msg ))
    
    except Exception as e:
        # Log the error or handle it accordingly
        flash(f"Erro ao adicionar usuário: {str(e)}", "error")
        return redirect(url_for('index'))


@app.route('/update_user/<int:user_id>', methods=['POST'])
def update_user(user_id):
    try:
        # Get the updated data from the form
        updated_name = request.form['updated_name']
        updated_cpf = request.form['updated_cpf']

        # Validating CPF using a regular expression
        cpf_pattern = re.compile(r'^(\d{3}\.\d{3}\.\d{3}-\d{2})$')
        if not cpf_pattern.match(updated_cpf):
            msg = "CPF inválido!"
            return redirect(url_for('index', msg=msg))

        # Connect to the database and update the user
        conn = sqlite3.connect(DB_NAME)
        cursor = conn.cursor()
        cursor.execute('UPDATE users SET name = ?, cpf = ? WHERE id = ?', (updated_name, updated_cpf, user_id))
        conn.commit()
        conn.close()

        msg = f"Usuário {user_id} atualizado com sucesso!"
        return redirect(url_for('index', msg=msg))

    except Exception as e:
        flash(f"Erro ao atualizar usuário: {str(e)}", "error")
        return redirect(url_for('index'))


@app.route('/delete_user/<int:user_id>')
def delete_user(user_id):
    try:
        # Connect to the database and delete the user
        conn = sqlite3.connect(DB_NAME)
        cursor = conn.cursor()
        cursor.execute('DELETE FROM users WHERE id = ?', (user_id,))
        conn.commit()
        conn.close()

        msg = f"Usuário {user_id} deletado com sucesso!"
        return redirect(url_for('index', msg=msg))

    except Exception as e:
        flash(f"Erro ao deletar usuário: {str(e)}", "error")
        return redirect(url_for('index'))


if __name__ == '__main__':
    app.run(debug=True)


