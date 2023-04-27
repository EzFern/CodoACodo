Algoritmo Opciones
	
	Definir opcion Como Entero;
	Definir palabra Como Caracter;
	
	Escribir "Escriba una palabra";
	Leer palabra;
	
	Escribir "Seleccione una Opción:";
	Escribir "1- TU PALABRA EN MAYÚSCULAS";
	Escribir "2- tu palabra en minúsculas";
	Escribir "3- Largo de su palabra";
	Leer opcion;
	
	Segun opcion Hacer
		1:
			Escribir "TU PALABRA EN MAYUSCULAS: ", Mayusculas(palabra);
		2:
			Escribir "tu palabra en minúsculas: ", Minusculas(palabra);
		3:
			Escribir "su palabra tiene ", Longitud(palabra), " caracteres";
		De Otro Modo:
			Escribir "Opción incorrecta";
	FinSegun
FinAlgoritmo
