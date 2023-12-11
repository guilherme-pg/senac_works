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


# GET
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
        msg = f"Error fetching data from the database: {str(e)}"
        print(msg)
        return render_template('index.html', msg=msg, users=[])


# CREATE
@app.route('/add_user', methods=['POST'])
def add_user():
    try:
        name = request.form['name']
        cpf = request.form['cpf']
        cpf_numbers = ''.join(filter(str.isdigit, cpf))

        # Validating CPF using a regular expression
        cpf_pattern = re.compile(r'^(\d{3}\.\d{3}\.\d{3}-\d{2})$')
        if len(cpf_numbers) != 11 and not cpf_pattern.match(cpf):
            msg = f"CPF de {name} é inválido!"
            print(msg)
            return redirect(url_for('index', msg=msg))

        if len(cpf) == 11 or len(cpf_numbers) == 11:
            cpf = f'{cpf_numbers[:3]}.{cpf_numbers[3:6]}.{cpf_numbers[6:9]}-{cpf_numbers[9:]}'


        conn = sqlite3.connect(DB_NAME)
        cursor = conn.cursor()
        cursor.execute('INSERT INTO users (name, cpf) VALUES (?, ?)', (name, cpf))
        conn.commit()
        conn.close()

        
        msg = f"{name} adicionad@ com sucesso!"
        print(msg)
        return redirect(url_for('index', msg=msg ))
    
    except Exception as e:
        flash(f"Erro ao adicionar usuário: {str(e)}", "error")
        print(msg)
        return redirect(url_for('index'))


# UPDATE
@app.route('/update_user/<int:user_id>', methods=['POST'])
def update_user(user_id):
    try:
        # Get the updated data from the form
        updated_name = request.form['updated_name']
        updated_cpf = request.form['updated_cpf']

        cpf_numbers = ''.join(filter(str.isdigit, updated_cpf))

        # Validating CPF using a regular expression
        cpf_pattern = re.compile(r'^(\d{3}\.\d{3}\.\d{3}-\d{2})$')
        if len(cpf_numbers) != 11 and not cpf_pattern.match(updated_cpf):
            msg = f"CPF de {updated_name} é inválido!"
            print(msg)
            return redirect(url_for('index', msg=msg))

        if len(updated_cpf) == 11 or len(cpf_numbers) == 11:
            updated_cpf = f'{cpf_numbers[:3]}.{cpf_numbers[3:6]}.{cpf_numbers[6:9]}-{cpf_numbers[9:]}'

        # Connect to the database and update the user
        conn = sqlite3.connect(DB_NAME)
        cursor = conn.cursor()
        cursor.execute('UPDATE users SET name = ?, cpf = ? WHERE id = ?', (updated_name, updated_cpf, user_id))
        conn.commit()
        conn.close()

        msg = f"Usuário {user_id} atualizado com sucesso!"
        print(msg)
        return redirect(url_for('index', msg=msg))

    except Exception as e:
        msg=f"Erro ao atualizar usuário: {str(e)}"
        print(msg)
        return redirect(url_for('index', msg=msg))


# DELETE
@app.route('/delete_user/<int:user_id>', methods=['POST'])
def delete_user(user_id):
    try:
        # Connect to the database and delete the user
        conn = sqlite3.connect(DB_NAME)
        cursor = conn.cursor()
        cursor.execute('DELETE FROM users WHERE id = ?', (user_id,))
        conn.commit()
        conn.close()

        msg = f"Usuário {user_id} deletado com sucesso!"
        print(msg)
        return redirect(url_for('index', msg=msg))

    except Exception as e:
        msg=f"Erro ao deletar usuário: {str(e)}"
        print(msg)
        return redirect(url_for('index', msg=msg))


if __name__ == '__main__':
    app.run(debug=True)


