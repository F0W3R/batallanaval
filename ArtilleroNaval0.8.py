import random

# Dificultad, generacion de matriz para atacar y vista ------------------------
print("Bienvenido/a al ARTILLERO NAVAL, su misión aquí ser evitar que tropas enemigas invadan nuestro territorio,")
print("tiene disparos limitados por lo que le deseo la mejor de la suerte, o lo pagara con sangre.... ")
print("VIVA ARTOSZKA")
print(" ")
dificultad = int(input("Ingrese la dificultad: FACIL=1  DIFICIL=2"  ))
cantaciertos = 0
cantbarcos = 0


if dificultad == 1:
    intentos = 17
    ataquejugador = [[0, 0, 0, 0, 0],  # La que debemos atacar (invisible)
                     [0, 0, 0, 0, 0],
                     [0, 0, 0, 0, 0],
                     [0, 0, 0, 0, 0],
                     [0, 0, 0, 0, 0]]

    vistajugador = [[0, 0, 0, 0, 0],  # Vamos a ver los lugares atacados previamente (visible)
                    [0, 0, 0, 0, 0],
                    [0, 0, 0, 0, 0],
                    [0, 0, 0, 0, 0],
                    [0, 0, 0, 0, 0]]

if dificultad == 2:
    intentos = 35
    ataquejugador = [[0, 0, 0, 0, 0, 0, 0],  # La que debemos atacar (invisible)
                     [0, 0, 0, 0, 0, 0, 0],
                     [0, 0, 0, 0, 0, 0, 0],
                     [0, 0, 0, 0, 0, 0, 0],
                     [0, 0, 0, 0, 0, 0, 0],
                     [0, 0, 0, 0, 0, 0, 0],
                     [0, 0, 0, 0, 0, 0, 0]]

    vistajugador = [[0, 0, 0, 0, 0, 0, 0],  # Lugares atacados previamente
                    [0, 0, 0, 0, 0, 0, 0],
                    [0, 0, 0, 0, 0, 0, 0],
                    [0, 0, 0, 0, 0, 0, 0],
                    [0, 0, 0, 0, 0, 0, 0],
                    [0, 0, 0, 0, 0, 0, 0],
                    [0, 0, 0, 0, 0, 0, 0]]

tamano = len(ataquejugador)
cantbarcos = tamano + (round(tamano * 2 / 5))
contador = 0

while contador != (tamano + (round(tamano * 2 / 5))):  # Se le asignan los lugares a los barcos enemigos
    x = random.randint(0, tamano - 1)
    y = random.randint(0, tamano - 1)
    if ataquejugador[x][y] == 0:
        ataquejugador[x][y] = 1
        contador = contador + 1

        if random.randint(0, 3) == 1 and 3:  # Intenta agruparse para hacer unos barcos mas grandes
            try:
                ataquejugador[x + random.randint(-1, 1)][y + random.randint(-1, 1)]

            except:
                IndexError
            # TRY Y EXCEPT para que no se salga de la matriz
# FIN IFF / WHILE

# -------------------------------------ACOMODAR PRINT MATRICES (ataque y vista del enemigo)

while cantaciertos != cantbarcos or intentos == 0:
    print(" ")
    print("")
    print("MATRIZ QUE IRIAMOS A ATACAR (OCULTA)")
    for i in range(0, tamano):
        print("")
        for j in range(0, tamano):
            print(ataquejugador[i][j], " ", end="", flush=True)

    print(" ")
    print(" ")

    print("MATRIZ QUE MARCA LAS COORDENADAS (VISTA)")
    for i in range(0, tamano):
        print("")
        for j in range(0, tamano):
            print(vistajugador[i][j], " ", end="", flush=True)

    print(" ")
    print("Elige una posicion para atacar [x][y] de 0 a 4 (de arriba para abajo): ")
    x = input()
    y = input()
    intentos = intentos - 1
    if ataquejugador[int(x)][int(y)] == 0:
        vistajugador[int(x)][int(y)] = 1
        print("MISS (vacio)")
    else:
        print("HIT (barco)")
        vistajugador[int(x)][int(y)] = 1
        cantaciertos = cantaciertos + 1

# FIN WHILE (JUEGO) se muestra resultado....

if intentos == 0:
    print("No a destruido las tropas enemigas y el pais fue invadido, tropas nacionalistas lo van a retirar")
    print("de su posicion actual por traición a la patria")
else:
    print("A DESTRUIDO LA FLOTA ENEMIGA, BUEN TRABAJO CAMARADA")

