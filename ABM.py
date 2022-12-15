import tkinter as tk
import baseDatos
from tkinter import messagebox

window = tk.Tk()
window.title("Registro")
window.geometry("400x400")


etiqueta0 = tk.Label(text="Ingresar Usuario")
etiqueta0.place(x=20, y=25)
caja0 = tk.Entry()
caja0.place(x=200, y=25)

etiqueta1 = tk.Label(text="Ingresar Nombre")
etiqueta1.place(x=20, y=75)
caja1 = tk.Entry()
caja1.place(x=200, y=75)

etiqueta2 = tk.Label(text="Ingresar Apellido ")
etiqueta2.place(x=20, y=125)
caja2 = tk.Entry()
caja2.place(x=200, y=125)

etiqueta3 = tk.Label(text="Ingresar Fecha de Nacimiento")
etiqueta3.place(x=20, y=175)
caja3 = tk.Entry()
caja3.place(x=200, y=175)

etiqueta4 = tk.Label(text="Ingresar Correo electrónico")
etiqueta4.place(x=20, y=225)
caja4 = tk.Entry()
caja4.place(x=200, y=225)

etiqueta5 = tk.Label(text="Ingresar Contraseña")
etiqueta5.place(x=20, y=275)
caja5 = tk.Entry(show="*")
caja5.place(x=200, y=275)

def registro():
	username=caja0.get()
	userValidate(username)
	nombre=caja1.get()
	apellido=caja2.get()
	nacimiento=caja3.get()
	email=caja4.get()
	password=caja5.get()
	if userValidate:
		baseDatos.saveData(username,nombre,apellido,email,nacimiento,password)
		messagebox.showinfo("Mensaje", "Registro exitoso")

def userValidate(username):
	if len(username)<4:
		messagebox.showinfo("Mensaje", "El usuario debe tener al menos 4 caracteres")

def limpiarformulario():
	caja0.delete(0, tk.END)
	caja1.delete(0, tk.END)
	caja2.delete(0, tk.END)
	caja3.delete(0, tk.END)
	caja4.delete(0, tk.END)
	caja5.delete(0, tk.END)
boton = tk.Button(text="Registrar", width=20, height=2, bg="green1", fg="white" , command = registro)
boton.place(x=20, y=325)


tk.mainloop()