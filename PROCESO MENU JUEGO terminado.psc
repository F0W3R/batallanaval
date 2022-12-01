Algoritmo Menujuegos
	
	Borrar Pantalla
	Esperar 1 segundos
	Escribir "¡Hola mundo!"
	Esperar 3 segundos
	Escribir "¡Bienvenido a nuestro juego!"
	Esperar 3 segundos
	Borrar Pantalla
	
Definir OPCIONELEGIDA como entero
		Repetir
			// Ver menú
			Limpiar Pantalla
			Escribir "¿Qué jugamos hoy? :)"
			Esperar 2 segundos
			Escribir "1. Ahorcado"
			Esperar 1 segundos
			Escribir "2. TaTeTi"
			Esperar 1 segundos
			Escribir "3. Artillero Naval"
			Esperar 1 segundos
			Escribir "4. Adivina un número"
			Esperar 1 segundos
			Escribir "5. Salir"
			Esperar 1.5 segundos
			// Preguntarle al jugador que elija qué juego quiere jugar
			Escribir "Para elegir, escribí el número de la opción que desees (1-5): "
			Leer OPCIONELEGIDA
			Borrar Pantalla
			
			// Mostrar la elección del jugador
			Segun OPCIONELEGIDA Hacer
				1:
					Escribir  "¿Listo?"
					Esperar 2 Segundos
					Borrar Pantalla
					Escribir "El juego comenzará en... "
					Esperar 2 Segundos
					Escribir "3..."
					Esperar 1 segundos
					Escribir "2..."
					Esperar 1 Segundos
					Escribir "1..."
					Esperar 1 Segundos
					Borrar Pantalla
					Juego1
					
				2:
					Escribir  "¿Listo?"
					Esperar 2 Segundos
					Borrar Pantalla
					Escribir "El juego comenzará en... "
					Esperar 2 Segundos
					Escribir "3..."
					Esperar 1 segundos
					Escribir "2..."
					Esperar 1 Segundos
					Escribir "1..."
					Esperar 1 Segundos
					Borrar Pantalla
					Juego2
				3:
					Escribir  "¿Estas listo?"
					Esperar 2 Segundos
					Borrar Pantalla
					Escribir "El juego comenzará en... "
					Esperar 2 Segundos
					Borrar Pantalla
					Escribir "3..."
					Esperar 1 segundos
					Escribir "2..."
					Esperar 1 Segundos
					Escribir "1..."
					Esperar 1 Segundos
					Borrar Pantalla
					Juego3
				4:
					Escribir  "¿Estas listo?"
					Esperar 2 Segundos
					Borrar Pantalla
					Escribir "El juego comenzará en... "
					Esperar 2 Segundos
					Borrar Pantalla
					Escribir "3..."
					Esperar 1 segundos
					Escribir "2..."
					Esperar 1 Segundos
					Escribir "1..."
					Esperar 1 Segundos
					Borrar Pantalla
					Juego4
				5:
					Escribir "Gracias por jugar hoy :)"
				De otro modo:
					Escribir "Opción inválida"
			FinSegun
			Esperar 2 Segundos
			Escribir "Presiona enter para continuar"
			Esperar Tecla
		Hasta Que OPCIONELEGIDA=5
FinAlgoritmo




SubProceso Juego1
	Definir palabra Como Caracter
	Definir oportunidad,turnos, aciertos Como Numerica
	Definir TamanoPalabra Como Numerica
	Definir encontrado Como Logica
	Definir cabeza, cuerpo, mano_izq, mano_der Como Caracter
	Definir pierna_izq, pierna_der, pie_d, pie_i Como Caracter
	Definir chr,letra, Linea Como Caracter
	Definir n Como Numerica
	Esperar 2 segundos
	Escribir ""
	Escribir ""
	Escribir "      EL AHORCADO"
	Escribir "     Juego para dos"
	Escribir ""
	Escribir'     \ O      O'
	Escribir'       |\    /|\'
	Escribir'      /\      /\'
	Escribir'      - -    - -'
	Esperar 5 segundo
	Borrar Pantalla
	Escribir ""
	Escribir ""
	Escribir "          Jugador 1:"
   	Escribir "     Escribe la palabra Secreta"
	Escribir "     "
	Leer palabra
	Borrar Pantalla
	Esperar 1 Segundos
	Escribir ""
	Escribir ""
	Escribir "      Jugador 2:"
	Escribir "     ¿Estas listo?"
	Esperar 5 segundo
	Borrar Pantalla
	//Datos a tener en cuenta
	TamanoPalabra <- 20
    oportunidad <- 8
	turnos <- 0
    aciertos <- 0
	//Figura
    cabeza <- " "
    cuerpo <- " "
    mano_izq <- " "
    mano_der <- " "
    pierna_izq <- " "
    pierna_der <- " "
	pie_d <- " "
	pie_i <- " "
	
    n <- Longitud(palabra)
    Dimension Linea(n)
    Para i<-1 Hasta n Con Paso 1 Hacer
        Linea[i] <- '_'
    FinPara
    Repetir
        Escribir ""
        Escribir "Quedan ", oportunidad-turnos " opurtunidades"
        Para i<-1 Hasta n Con Paso 1 Hacer
            Escribir sin saltar " ", Linea[i];
        FinPara
		
        Escribir ""
        Escribir Sin Saltar "Ingrese una letra: "
        Leer letra;
        encontrado <- Falso
        Para i<-1 Hasta n Con Paso 1 Hacer
            chr <- Subcadena(palabra, i, i)
            Si Mayusculas(letra)=Mayusculas(chr) Entonces
                encontrado <- Verdadero;
                Si Linea[i]='_' Entonces
                    Linea[i] <- chr;
                    aciertos <- aciertos+1
                FinSi
            FinSi
        FinPara
        Si No encontrado Entonces
            turnos <- turnos+1;
            Escribir "Letra no encontrada."
            Segun turnos Hacer
                1:
                    cabeza <- 'O'
                2:
                    cuerpo <- 'Î'
                3:
                    mano_der <- '/'
                4:
                    mano_izq <- '\'
                5:
                    pierna_der <- '/'
                6:
                    pierna_izq <- '\'
				7:
                    pie_d <- '´'
				8:
                    pie_i <- '`'
            FinSegun
        FinSI
		Borrar Pantalla
		Escribir "________"
		Escribir "       |"
        Escribir "       ", cabeza," "
        Escribir "      ", mano_der, cuerpo, mano_izq
        Escribir "      ", pierna_der," ", pierna_izq
		Escribir "      ", pie_d," ", pie_i
		
    Hasta Que turnos>=oportunidad O aciertos>=n
    Si aciertos=n Entonces
		Escribir "     "
        Escribir "   GANASTE!!!"
    Sino
		Escribir "     "
        Escribir "   PERDISTE "
    FinSi
    Escribir "   La palabra secreta era: ", palabra
	Escribir "   ¿Desean jugar otra vez? Si/no"
	
FinSubProceso


SubProceso Juego2
		
		//Bienvenida al juego
		Borrar Pantalla
		Escribir "¡Bienvenido al TaTeTi!"
		Esperar 3 Segundos
		Borrar Pantalla
		
		//Le pido los nombres a los jugadores
		Esperar 1 Segundos
		Escribir "Jugador 1: Ingresa tu nombre!"
		Leer Jugador1J1
		Escribir "¡Gracias, " Jugador1J1 "!"
		Esperar 2 segundos
		
		Escribir "Jugador 2: Ingresa tu nombre!"
		Leer Jugador2J1
		Escribir "¡Gracias, " Jugador2J1 "!"
		Esperar 3 segundos
		
		Escribir "El objetivo es ingresar 3 fichas en línea."
		Esperar 3 segundos
		
		Borrar Pantalla
		Escribir  "¿Están listos para jugar, " Jugador1J1 " y " Jugador2J1 "?"
		Esperar 3 Segundos
		Escribir Jugador1J1 ", tus fichas serán las O"
		Esperar 2 Segundos
		Escribir Jugador2J1 ", tus fichas serán las X"
		Esperar 2.5 Segundos
		Escribir "Ingresen enter para continuar."
		Esperar Tecla
		
		//Inicio dos matrices 3x3
		//En una "Tab2J1" se guarda un espacio, al que luego se le asignará la ficha X,O 
		//En la otra se le asocia un valor a la ficha: para el jugador1 sera 1, y para el jugador2 el 2
		//Para ver quién gano se multiplica por fila, por columna y por diagonal
		//Si el resultado es 1 (1*1*1=1), ganó el primer jugador
		//Si es 8 (2*2*2=8), ganó el segundo
		//Si es 0 (x*x*0=0), faltan espacios por completar
		//Si no da ninguno de estos resultados, están las tres fichas, pero no son del mismo jugador.
		
		Dimension Tab1J1[3,3]
		Dimension Tab2J1[3,3]
		
		Para i<-1 Hasta 3 Hacer
			Para j<-1 Hasta 3 Hacer
				Tab1J1[i,j]<- 0
				Tab2J1[i,j]<- " "
			FinPara
		FinPara
		
		//Le asigno el valor verdadero al Jugador 1, que será quien comience la partida
		TurnoJugador1J1<-Verdadero
		
		//Le asigno el valor falso a "Terminado" y a "Ganador" que serán las variables que darán fin a la partida
		TerminadoJ1<-Falso
		GanadorJ1<-Falso
		
		//Asigno el turnero en 0 para sumarle +1 cada vez que juegue un jugador. El máximo de turnos será 9
		TurnosJ1<-0
		
		Mientras TerminadoJ1=Falso hacer
			
			//Dibujo el tablero
			Borrar Pantalla
			Escribir "       TaTeTi   "
			Escribir "   "
			Escribir "   ",Tab2j1[1,1],"  |  ",Tab2J1[1,2],"  |  ",Tab2J1[1,3]
			Escribir "     1|    2|    3"
			Escribir " -----+-----+-----"
			Escribir "   ",Tab2J1[2,1],"  |  ",Tab2J1[2,2],"  |  ",Tab2J1[2,3]
			Escribir "     4|    5|    6"
			Escribir " -----+-----+-----"
			Escribir "   ",Tab2J1[3,1],"  |  ",Tab2J1[3,2],"  |  ",Tab2J1[3,3]
			Escribir "     7|    8|    9"
			Escribir " "
			
			Si GanadorJ1=Falso y TurnosJ1<9 Entonces
				
				//Carga auxiliares, qué pasa según a qué jugador le toca
				Si TurnoJugador1J1 Entonces
					FichaJ1<-"O"
					Valor<- 1
					ObjetivoJ1<-1
					Escribir "Turno de " Jugador1J1 ". (O)"
				Sino
					//Si TurnoJugador2J1
					FichaJ1<-"X"
					Valor<- 2
					ObjetivoJ1<-8
					Escribir "Turno de " Jugador2J1 ". (X)"
				FinSi
				
				//Pide  al jugador la posición donde quiere colocar la ficha y verifica que sea mayor a 1, menor que 9, y no haya sido ingresada antes
				Escribir "Ingrese la posición en la que desea su ficha (1-9):"
				
				Repetir
					Leer PosicionJ1
					Si PosicionJ1<1 o PosicionJ1>9 Entonces
						Escribir "Posición incorrecta, ingrese nuevamente: "
						PosicionJ1<-Error;
					Sino
						//Ubica en el 3x3 de la matriz
						i<-trunc((PosicionJ1-1)/3)+1
						j<-((PosicionJ1-1) MOD 3)+1
						Si Tab1J1[i,j]<>0 Entonces
							PosicionJ1<-Error
							Escribir "Posición incorrecta, ingrese nuevamente: "
						FinSi
					FinSi
				Hasta Que PosicionJ1<>Error
				
				//Guarda la ficha en la matriz Tab2J1 y el valor en Tab1J1
				//Recordar que que asigna antes Valor y FichaJ1 s/jugador activo en ese momento
				TurnosJ1<-TurnosJ1+1
				Tab1J1[i,j]<-Valor
				Tab2J1[i,j]<-FichaJ1
				
				//Verifica si ganó. Busca el producto de las fichas en el tablero de Objetivo (1 u 8)
				//Saca el resultado:
				AuxD1J1<-1
				AuxD2J1<-1
				Para i<-1 hasta 3 hacer
					AuxIJ1<-1
					AuxJJ2<-1
					AuxD1J1<-AuxD1J1*Tab1J1[i,i]
					AuxD2J1<-AuxD2J1*Tab1J1[i,4-i]
					Para j<-1 hasta 3 hacer
						AuxIJ1<-AuxIJ1*Tab1J1[i,j]
						AuxJJ2<-AuxJJ2*Tab1J1[j,i]
					FinPara
					//Ve resultado:
					Si AuxIJ1=ObjetivoJ1 o AuxJJ2=ObjetivoJ1 Entonces
						GanadorJ1<-Verdadero
					FinSi
				FinPara
				Si AuxD1J1=ObjetivoJ1 o AuxD2J1=ObjetivoJ1 Entonces
					GanadorJ1<-Verdadero
				Sino
					TurnoJugador1J1 <- TurnoJugador1J1=Falso
				FinSi
				
			Sino
				
				Si GanadorJ1=Verdadero Entonces
					Borrar Pantalla
					Escribir "El ganador es..."
					Esperar 1 Segundos
					Si TurnoJugador1J1=Falso Entonces
						Escribir "El jugador 1, " Jugador1J1 "!"
					Sino
						Escribir "El jugador 2, " Jugador2J1 "!"
					FinSi
				Sino
					Borrar Pantalla
					Escribir "Ay no... "
					Esperar 1 Segundos
					Escribir "¡Fue un empate!"
				FinSi
				Esperar 4 Segundos
				Borrar Pantalla
				Escribir "*** FIN DEL JUEGO ***"
				Escribir "¡Esperamos que se hayan divertido!"
				Esperar 2 Segundos
				Escribir "¡Vuelvan pronto!"
				TerminadoJ1<-Verdadero
				
			FinSi
		FinMientras
	FinSubProceso


SubProceso Juego3
	Definir cantaciertos,dificultad,cantbarcos,intentos,matrizataque,matrizvista,contador,tamano,fila,columna,i,j,coordenada Como Entero
	Escribir ('Bienvenido/a al ARTILLERO NAVAL, su misión aquí ser evitar que tropas enemigas invadan nuestro territorio,')
	Escribir ('No puede equivocarse repetidas veces... por lo que le deseo la mejor de las suertes, o lo pagara con sangre.... ')
	Escribir ('VIVA ARTOSZKA')
	Escribir (' ')
	Escribir ('Ingrese la dificultad: FACIL=1 o DIFICIL=2  ')
	Repetir
		Leer dificultad
		Si dificultad<>1 Y dificultad<>2 Entonces
			Escribir 'Ingrese 1 o 2 porfavor'
		FinSi
	Hasta Que dificultad==1 O dificultad==2
	// Se crean y reyenan las matrices con 0 para luego poner los barcos
	cantaciertos <- 0
	cantbarcos <- 0
	Segun dificultad  Hacer
		1:
			intentos <- 11
			Dimension matrizataque[5,5]
			Dimension matrizvista[5,5]
			tamano <- 5
			Para fila<-1 Hasta 5 Hacer
				Para columna<-1 Hasta 5 Hacer
					matrizataque[fila,columna]<-0
					matrizvista[fila,columna]<-0
				FinPara
			FinPara
		2:
			intentos <- 22
			Dimension matrizataque[7,7]
			Dimension matrizvista[7,7]
			tamano <- 7
			Para fila<-1 Hasta 7 Hacer
				Para columna<-1 Hasta 7 Hacer
					matrizataque[fila,columna]<-0
					matrizvista[fila,columna]<-0
				FinPara
			FinPara
	FinSegun
	contador <- 0
	cantbarcos <- tamano+(trunc((tamano*2)/5))
	// Se realiza la carga de barcos en la matriz 
	Mientras contador<>cantbarcos Hacer
		fila <- azar(tamano)
		columna <- azar(tamano)
		Si matrizataque[fila+1,columna+1]==0 Entonces
			matrizataque[fila+1,columna+1]<-1
			contador <- contador+1
			Si fila<7 Y fila>1 Y columna<7 Y columna>1 Entonces // aqui se agrupan algunos casilleros aleatorios para hacer barcos mas grandes
				Si matrizataque[fila+Aleatorio(-1,1),columna+Aleatorio(-1,1)]==1 Entonces
					contador <- contador-1
				FinSi
			FinSi
		FinSi
	FinMientras
	// Empezaria el juego desde aqui por que el usuario toma decisiones
	// Hace el print de la matriz (ahora matricez para probarlas)
	Mientras cantaciertos<>cantbarcos Y intentos<>0 Hacer
		// SI QUEREMOS PROBAR PARA HACER EL DEBUG DESMARCAMOS ESTO
		// Escribir " "
		// Escribir " "
		// Escribir "Matriz oculta que iriamos a atacar"
		// para i = 1 hasta tamano con paso 1
		// Escribir " "
		// para j = 1 hasta tamano con paso 1
		// Escribir matrizataque[i,j] " " Sin Saltar
		// FinPara
		// FinPara
		Escribir ' '
		Escribir ' '
		Escribir 'Matriz que muestra nuestros ataques'
		Para i<-1 Hasta tamano Hacer
			Escribir ' '
			Para j<-1 Hasta tamano Hacer
				Escribir matrizvista[i,j],' ' Sin Saltar
			FinPara
		FinPara
		Escribir ' '
		Escribir ' '
		Escribir 'Usted tiene ',intentos,' intentos'
		Repetir
			Escribir 'Ingrese la coordenada de 1 a ',tamano,' primero fila y luego columna (se toma de la esquina sup izq.)'
			Leer fila
			Leer columna
		Hasta Que fila>=1 Y fila<=tamano Y columna>=1 Y columna<=tamano
		Esperar 0.7 segundos
		Borrar Pantalla
		
		// Se corrobora la posicion que fue atacada
		Si matrizataque[fila,columna]==1 Entonces
			Escribir 'DISPARO EXITOSO'
			cantaciertos <- cantaciertos+1
			matrizataque[fila,columna]<-2
			matrizvista[fila,columna]<-2
		SiNo
			Si matrizvista[fila,columna]==3 O matrizvista[fila,columna]==2 Entonces
				Escribir ' ******* '
				Escribir 'Ya ha disparado a esa coordenada, no lo repita'
				Escribir ' ******* '
			SiNo
				Escribir 'DISPARO FALLIDO'
				intentos <- intentos-1
				matrizvista[fila,columna]<-3
			FinSi
		FinSi
	FinMientras
	Escribir '  '
	Escribir '  '
	
	// Final del programa se muestran resultados
	Si cantaciertos==cantbarcos Entonces
		Escribir 'ENHORABUENA CAMARADA, ha logrado proteger su nacion y su vida...'
		Escribir ('VIVA ARTOSZKA')
		Escribir ' '
	SiNo
		Escribir 'Lamentablemente no pudo despejar el territorio de invasores y se la ha acusado de traición'
		Escribir 'Su fecha de ejecución es mañana.'
	FinSi
	Escribir 'Posiciones de los barcos representados por: 1, impactos: 2 y vacio: 3 y sin descubrir: 0' Sin Saltar
	Para i<-1 Hasta tamano Hacer
		Escribir ' '
		Para j<-1 Hasta tamano Hacer
			Escribir matrizvista[i,j],' ' Sin Saltar
		FinPara
	FinPara
FinSubProceso


SubProceso Juego4
	
	// Se define la variable "dif"
	Definir dif como entero
	
	// Se inicializa la variable "intento"
	intento=1
	
	Borrar Pantalla
	Esperar 1 segundos
	Escribir "¡Hola mundo!"
	Esperar 3 segundos
	Escribir "¡Bienvenido a nuestro juego!"
	Esperar 2 segundos
	Borrar Pantalla
	
	Definir OPCIONELEGIDA4 como entero
	Repetir
		// Ver menú
		Limpiar Pantalla
		Escribir "¿En qué dificultad querés jugar? "
		Esperar 1 segundos
		Escribir "1. Fácil"
		Esperar 1 segundos
		Escribir "2. Normal"
		Esperar 1 segundos
		Escribir "3. Difícil"
		Esperar 1 segundos
		Escribir "4. Salir"
		Esperar 2 segundos
		// Preguntarle al jugador que elija en qué dificultad quiere jugar
		Escribir "Para elegir, escribí el número de la opción que desees (1-4): "
		Leer OPCIONELEGIDA4
		Borrar Pantalla
		
		// Mostrar la elección del jugador
		Segun OPCIONELEGIDA4 Hacer
			1:
				Escribir  "¿Estas listo?"
				Esperar 2 Segundos
				Borrar Pantalla
				Escribir "El juego comenzará en... "
				Esperar 2 Segundos
				Borrar Pantalla
				Escribir "3..."
				Esperar 1 segundos
				Escribir "2..."
				Esperar 1 Segundos
				Escribir "1..."
				Esperar 1 Segundos
				Borrar Pantalla
				
				Escribir "Elegiste jugar en dificultad Fácil, es decir, tenés que adivinar un número entre 1 y 25, contás con 3 intentos. "
				num = azar(26)
				
				Escribir "Ingrese el número que usted cree que sea, entre 1 y 25 "
				leer intento_usuario
				
				Si intento_usuario=num Entonces
					Escribir "Felicidades!!!! Lograste adivinar el número en fácil, en el intento ", intento
				SiNo
					
					Repetir
						
						Si intento_usuario > 25 Entonces
							Escribir "Ingresaste un número mayor al límite que es 25, recordá que estás jugando en dificultad fácil, abajo ingresa nuevamente un número entre (1-25)"
						FinSi
						
						Si intento_usuario > num y intento_usuario <= 25 Entonces
							Escribir "Ingresaste un número más alto que el que intentas adivinar, probá con uno un poco más chico."
							intento=intento+1
						FinSi
						
						Si intento_usuario < num Entonces
							Escribir "Ingresaste un número más chico que el que intentas adivinar, probá con uno un poco más alto. "
							intento=intento+1
						FinSi
						
						Leer intento_usuario
						
					Hasta Que intento_usuario=num o intento=3
					
					Si intento_usuario=num Entonces
						Escribir "Felicidades!!!! Lograste adivinar el número en fácil, en el intento ", intento
					SiNo
						Escribir "No lograste adivinar el número, intentalo la próxima, seguro podés. "
					FinSi
					
				FinSi
			2:
				Escribir  "¿Estas listo?"
				Esperar 2 Segundos
				Borrar Pantalla
				Escribir "El juego comenzará en... "
				Esperar 2 Segundos
				Borrar Pantalla
				Escribir "3..."
				Esperar 1 segundos
				Escribir "2..."
				Esperar 1 Segundos
				Escribir "1..."
				Esperar 1 Segundos
				Borrar Pantalla
				
				Escribir "Elegiste jugar en dificultad normal, es decir, tenés que adivinar un número entre 1 y 50, contás con 5 intentos. "
				num = azar(51)
				
				Escribir "Ingrese el número que usted cree que sea, entre 1 y 50 "
				leer intento_usuario
				
				Si intento_usuario=num Entonces
					Escribir "Felicidades!!!! Lograste adivinar el número en normal, en el intento ", intento
				SiNo
					
					Repetir
						
						Si intento_usuario > 50 Entonces
							Escribir "Ingresaste un número mayor al límite que es 50, recordá que estás jugando en dificultad normal, abajo ingresa nuevamente un número entre (1-50)"
						FinSi
						
						Si intento_usuario > num y intento_usuario <= 50 Entonces
							Escribir "Ingresaste un número más alto que el que intentas adivinar, probá con uno un poco más chico."
							intento=intento+1
						FinSi
						
						Si intento_usuario < num Entonces
							Escribir "Ingresaste un número más chico que el que intentas adivinar, probá con uno un poco más alto. "
							intento=intento+1
						FinSi
						
						Leer intento_usuario
						
					Hasta Que intento_usuario=num o intento=5
					
					Si intento_usuario=num Entonces
						Escribir "Felicidades!!!! Lograste adivinar el número en normal, en el intento ", intento
					SiNo
						Escribir "No lograste adivinar el número, intentalo la próxima, seguro podés. "
					FinSi
					
				FinSi
			3:
				Escribir  "¿Estas listo?"
				Esperar 2 Segundos
				Borrar Pantalla
				Escribir "El juego comenzará en... "
				Esperar 2 Segundos
				Borrar Pantalla
				Escribir "3..."
				Esperar 1 segundos
				Escribir "2..."
				Esperar 1 Segundos
				Escribir "1..."
				Esperar 1 Segundos
				Borrar Pantalla
				
				Escribir "Elegiste jugar en dificultad diícil, es decir, tenés que adivinar un número entre 1 y 100, contás con 7 intentos. "
				num = azar(101)
				
				Escribir "Ingrese el número que usted cree que sea, entre 1 y 100 "
				leer intento_usuario
				
				Si intento_usuario=num Entonces
					Escribir "Felicidades!!!! Lograste adivinar el número en difícil, en el intento ", intento
				SiNo
					
					Repetir
						
						Si intento_usuario > 100 Entonces
							Escribir "Ingresaste un número mayor al límite que es 100, recordá que estás jugando en dificultad difícil, abajo ingresa nuevamente un número entre (1-100)"
						FinSi
						
						Si intento_usuario > num y intento_usuario <= 100 Entonces
							Escribir "Ingresaste un número más alto que el que intentas adivinar, probá con uno un poco más chico."
							intento=intento+1
						FinSi
						
						Si intento_usuario < num Entonces
							Escribir "Ingresaste un número más chico que el que intentas adivinar, probá con uno un poco más alto. "
							intento=intento+1
						FinSi
						
						Leer intento_usuario
						
					Hasta Que intento_usuario=num o intento=7
					
					Si intento_usuario=num Entonces
						Escribir "Felicidades!!!! Lograste adivinar el número en difícil, en el intento ", intento
					SiNo
						Escribir "No lograste adivinar el número, intentalo la próxima, seguro podés. "
					FinSi
				FinSi
			4:
				Escribir "Gracias por jugar hoy :)"
			De otro modo:
				Escribir "Opción inválida"
		FinSegun
		Esperar 2 Segundos
		Escribir "Presiona enter para continuar"
		Esperar Tecla
	Hasta Que OPCIONELEGIDA4=4
FinSubProceso
	