Algoritmo piedraPapelTijera
	
	Definir opcionUsuario, opcionPC, ganoUsuario, ganoPC Como Entero;	
	Definir continuar Como caracter;
	
	ganoPC = 0;
	ganoUsuario = 0;
	
	Repetir
		Escribir "Elige una opcion";		
		Escribir "1- Piedra, 2-Papel, 3-Tijera";
		
		Leer opcionUsuario;
		
		Si (opcionUsuario >= 1 & opcionUsuario <= 3) Entonces
			
			opcionPC = Aleatorio(1,3);
			
			Segun opcionUsuario Hacer
				1:
					Escribir "Tu opcion Piedra";
					Segun opcionPC Hacer
						1:
							Escribir "La PC elige Piedra";
							Escribir "Han empatado";							
						2:
							Escribir "La PC elige Papel";
							Escribir "Has perdido!";
							ganoPC = ganoPC + 1;
						3:
							Escribir "La PC elige Tijera";
							Escribir "Has ganado!";
							ganoUsuario = ganoUsuario + 1;
					FinSegun
					
					
					
				2:
					
				3:
					
				
			FinSegun
			
		SiNo
			
			Escribir "Opcion Incorrecta, debe elegir 1, 2 o 3";
			
		FinSi
		
		Escribir "Desea continuar? (S/N)?";
		Leer continuar;
		
	Hasta Que Mayusculas(continuar) = "N" | ganousuario == 3 | ganoPC == 3
	
	Si ganoUsuario == 1 Entonces
		Escribir "Ganaste", ganoUsuario, "vez";
	SiNo
		Escribir "Ganaste", ganoUsuario, "veces";
	FinSi
	
	Si ganoPC == 1 Entonces
		Escribir "La PC ganó", ganoPC, "vez";
	SiNo
		Escribir "La PC ganó", ganoUsuario, "veces";
	FinSi
	
FinAlgoritmo