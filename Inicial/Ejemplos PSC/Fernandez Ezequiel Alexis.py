import tkinter as tk

def rojo():
	salida["text"]=caja.get()
	salida["fg"]="red"

def borra():
	salida["text"]=""

window = tk.Tk()
window.title("Hola soy la ventana")
window.geometry("400x400")

etiqueta = tk.Label(text="Bienvenido, escriba algo y al presionar el botón aparecerá en rojo")
etiqueta.place(x=20, y=30)

caja = tk.Entry()
caja.place(x=140, y=60)

boton = tk.Button(text="Magia!", command = rojo)
boton.place(x=180, y=100)

salida=tk.Label()
salida.place(x=140, y=150)

boton = tk.Button(text="Borrar", command = borra)
boton.place(x=180, y=200)


tk.mainloop()