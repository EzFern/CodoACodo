Algoritmo Jubilacion
	
	Definir sexo Como Caracter;
	Definir edad Como Entero;
	Definir jubilar Como Logico;
	
	Escribir "Sexo? Escribir h para Hombre y m para Mujer";
	Leer sexo;
	Escribir "Edad? ";
	Leer edad;
	
	Si sexo == "m" Entonces
		jubilar = sexo == "m" & edad >= 60;
		Si jubilar = Verdadero Entonces
			Escribir "Se puede jubilar como Mujer";
		SiNo
			Escribir "No se puede jubilar";
		FinSi
	SiNo
		Si sexo == "h" Entonces
			jubilar = sexo == "h" & edad >= 65;
			Si jubilar = Verdadero Entonces
				Escribir "Se puede jubilar como hombre";
			SiNo
				Escribir "No se puede jubilar";
			FinSi
		SiNo
			Escribir "Introdujo mal un dato";
		FinSi
	FinSi
	
FinAlgoritmo