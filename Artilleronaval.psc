Proceso Artilleronaval
	Definir cantaciertos, dificultad, cantbarcos, intentos, matrizataque, matrizvista, contador, tamano, fila, columna, i, j, coordenada como enteros 
	
	Escribir ("Bienvenido/a al ARTILLERO NAVAL, su misión aquí ser evitar que tropas enemigas invadan nuestro territorio,")
	Escribir ("No puede equivocarse repetidas veces... por lo que le deseo la mejor de las suertes, o lo pagara con sangre.... ")
	Escribir ("VIVA ARTOSZKA")
	Escribir (" ")
	
	Escribir ("Ingrese la dificultad: FACIL=1 o DIFICIL=2  ")
	Repetir
		Leer dificultad
		si dificultad <> 1 y dificultad <> 2
			Escribir "Ingrese 1 o 2 porfavor"
		FinSi
	Hasta Que dificultad == 1 o dificultad == 2
	
	
	// Se reyenan las matrices con 0 para luego poner los barcos
	
	cantaciertos = 0
	cantbarcos = 0
	
	Segun dificultad Hacer
		1:intentos = 11
			Dimension matrizataque[5,5];
			Dimension matrizvista[5,5];
			tamano = 5
			Para fila = 1 hasta 5 con paso 1 
				para columna = 1 hasta 5 con paso 1
					matrizataque[fila,columna] = 0
					matrizvista[fila,columna] = 0
				FinPara
			FinPara
			
			
		2:intentos = 22
			Dimension matrizataque[7,7];
			Dimension matrizvista[7,7];
			tamano = 7
			Para fila = 1 hasta 7 con paso 1 
				para columna = 1 hasta 7 con paso 1
					matrizataque[fila,columna] = 0
					matrizvista[fila,columna] = 0
				FinPara
			FinPara
	FinSegun
	
	contador = 0
	cantbarcos = tamano + (trunc((tamano * 2) /5))
	
	
	// Se realiza la carga de barcos en la matriz 
	Mientras contador <> cantbarcos Hacer
		fila = azar(tamano)
		columna = azar(tamano)
		si matrizataque[fila+1,columna+1] == 0
			matrizataque[fila+1,columna+1] = 1
			contador = contador + 1
			si fila < 7 y fila >1 y columna < 7 y columna >1   // aqui se agrupan algunos casilleros aleatorios para hacer barcos mas grandes
				si matrizataque[fila+Aleatorio(-1,1),columna+Aleatorio(-1,1)] == 1
					contador = contador - 1
				finsi
			FinSi
		FinSi
	FinMientras
	
	// Empezaria el juego desde aqui por que el usuario toma decisiones
	// Hace el print de la matriz (ahora matricez para probarlas)
	
	Mientras cantaciertos <> cantbarcos y intentos <> 0
		
		//SI QUEREMOS PROBAR PARA HACER EL DEBUG DESMARCAMOS ESTO
		//Escribir " "
		//Escribir " "
		// 
		//
		//Escribir "Matriz oculta que iriamos a atacar"
		//para i = 1 hasta tamano con paso 1
		//	Escribir " "
		//	para j = 1 hasta tamano con paso 1
		//		Escribir matrizataque[i,j] " " Sin Saltar
		//		
		//	FinPara
		//FinPara
		
		
		Escribir " "
		Escribir " "
		Escribir "Matriz que muestra nuestros ataques"
		para i = 1 hasta tamano con paso 1
			Escribir " "
			para j = 1 hasta tamano con paso 1
				Escribir matrizvista[i,j] " " Sin Saltar
				
			FinPara
		FinPara
		
		Escribir " "
		Escribir " "
		Escribir "Usted tiene " intentos " intentos"
		Repetir
			Escribir "Ingrese la coordenada de 1 a " tamano " primero fila y luego columna (se toma de la esquina sup izq.)"
			Leer fila
			Leer columna
		Hasta Que fila >= 0 y fila <= tamano y columna >= 0 y columna <= tamano
		
		Esperar 0.7 segundos 
		Limpiar Pantalla
		// Se corrobora la posicion que fue atacada
		Si matrizataque[fila,columna] == 1
			Escribir "DISPARO EXITOSO"
			
			cantaciertos = cantaciertos + 1
			
			matrizataque[fila,columna] = 2
			matrizvista[fila,columna] = 2
			
		SiNo si matrizvista[fila,columna] == 3 o matrizvista[fila,columna] == 2
				Escribir " ******* "
				Escribir "Ya a disparado a esa coordenada, no lo repita"
				Escribir " ******* "
				
			SiNo
				
				Escribir "DISPARO FALLIDO"
				intentos = intentos - 1
				matrizvista[fila,columna] = 3
			FinSi
		FinSi
	FinMientras
	
	Escribir "  "
	Escribir "  "
	
	Si cantaciertos == cantbarcos
		Escribir "ENHORABUENA CAMARADA, a logrado proteger su nacion y su vida..."
		Escribir ("VIVA ARTOSZKA")
		Escribir " "
	Sino
		Escribir "Lamentablemente no pudo despejar el territorio de invasores y se la a acusado de traicón"
		Escribir "Su fecha de ejecución es mañana."
	FinSi
	
	Escribir "Posiciones de los barcos representados por: 1, impactos: 2 y vacio: 3 y sin descubrir: 0" Sin Saltar
	para i = 1 hasta tamano con paso 1
		Escribir " "
		para j = 1 hasta tamano con paso 1
			Escribir matrizvista[i,j] " " Sin Saltar
			
		FinPara
	FinPara
	
	
	

FinProceso


