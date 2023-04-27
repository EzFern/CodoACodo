import tkinter as tk
import baseDatos
from tkinter import messagebox

window = tk.Tk()
window.title("Ingreso a la Plataforma")
window.geometry("400x200")

etiqueta0 = tk.Label(text="Ingresar Usuario")
etiqueta0.place(x=20, y=25)
caja0 = tk.Entry()
caja0.place(x=200, y=25)

etiqueta1 = tk.Label(text="Ingresar Contraseña")
etiqueta1.place(x=20, y=75)
caja1 = tk.Entry()
caja1.place(x=200, y=75)

def login():
	username=caja0.get()
	password=caja1.get()
	if baseDatos.loginData(username,password):
		messagebox.showinfo("Mensaje", "Bienvenido a la Plataforma")
	else:
		messagebox.showinfo("Mensaje", "Usuario o Contraseña Incorrecto")
	limpiarformulario()
def limpiarformulario():
	caja0.delete(0, tk.END)
	caja1.delete(0, tk.END)

boton = tk.Button(text="Ingresar", bg="blue2", fg="white", width=20, height=2, command = login)
boton.place(x=150, y=155)

tk.mainloop()