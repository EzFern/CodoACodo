Algoritmo Opciones
	
	Definir opcion Como Entero;
	Definir palabra Como Caracter;
	
	Escribir "Escriba una palabra";
	Leer palabra;
	
	Escribir "Seleccione una Opci�n:";
	Escribir "1- TU PALABRA EN MAY�SCULAS";
	Escribir "2- tu palabra en min�sculas";
	Escribir "3- Largo de su palabra";
	Leer opcion;
	
	Segun opcion Hacer
		1:
			Escribir "TU PALABRA EN MAYUSCULAS: ", Mayusculas(palabra);
		2:
			Escribir "tu palabra en min�sculas: ", Minusculas(palabra);
		3:
			Escribir "su palabra tiene ", Longitud(palabra), " caracteres";
		De Otro Modo:
			Escribir "Opci�n incorrecta";
	FinSegun
FinAlgoritmo
