Algoritmo cualeselmayor
	Definir numero1, numero2, numero3, Mayor Como Entero;
	Escribir "Ingrese n�mero 1";
	Leer numero1;
	Escribir "Ingrese n�mero 2";
	Leer numero2;
	Escribir "Ingrese n�mero 3";
	Leer numero3;
	
	Si numero1 > numero2 & numero1 > numero3 Entonces
		Mayor = numero1;
	SiNo
		Si numero2 > numero3 Entonces
			Mayor = numero2;
		SiNo
			Mayor = numero3;
		FinSi
	FinSi
	
	Escribir "El mayor es:", Mayor;
FinAlgoritmo
