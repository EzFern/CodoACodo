import sqlite3

conn=sqlite3.connect("baseDeDatos.db")

cursor=conn.cursor()
cursor.execute("""CREATE TABLE IF NOT EXISTS usuarios(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, username VARCHAR(50) NOT NULL, nombre VARCHAR(100) NOT NULL, apellido VARCHAR(100) NOT NULL, email VARCHAR(50) UNIQUE NOT NULL, nacimiento VARCHAR(50) NOT NULL, password VARCHAR(50) NOT NULL )""")

def saveData(username,nombre,apellido,nacimiento,email,password):
	cursor.execute("INSERT INTO usuarios VALUES(NULL, ?, ?, ?, ?, ?, ?)",(username,nombre,apellido,nacimiento,email,password))
	conn.commit()

def loginData(username,password):
	cursor.execute("SELECT * FROM usuarios WHERE username=? AND password=?",(username, password))
	if cursor.fetchone() is not None:
		return True
	else:
		return False
