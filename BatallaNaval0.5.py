import random

# dificultad = int(input("Ingrese el tamaño de la matriz 1 (4*4), 2 (6*6) o 3 (8*8): "))
dificultad = 1
cantaciertos = 0
# Dificultad, generacion de matriz para atacar y vista ------------------------

if dificultad == 1:
    ataquejugador = [[0, 0, 0, 0, 0], # La que debemos atacar (invisible)
                     [0, 0, 0, 0, 0],
                     [0, 0, 0, 0, 0],
                     [0, 0, 0, 0, 0],
                     [0, 0, 0, 0, 0]]

    ataquemaquina = [[0, 0, 0, 0, 0],   # La que la maquina atacara (visible)
                     [0, 0, 0, 0, 0],
                     [0, 0, 0, 0, 0],
                     [0, 0, 0, 0, 0],
                     [0, 0, 0, 0, 0]]

    vistajugador =  [[0, 0, 0, 0, 0], # Vamos a ver los lugares atacados previamente (visible)
                     [0, 0, 0, 0, 0],
                     [0, 0, 0, 0, 0],
                     [0, 0, 0, 0, 0],
                     [0, 0, 0, 0, 0]]


    tamaño = len(ataquejugador)
    cantbarcos = tamaño
    contador = 0
    while contador != (tamaño):    # Se le asignan los lugares a los barcos enemigos
        x = random.randint(0, tamaño - 1)
        y = random.randint(0, tamaño - 1)
        if ataquejugador[x][y] == 0:
            ataquejugador[x][y] = 1
            contador = contador + 1
# FIN IFF

# -------------------------------------ACOMODAR PRINT MATRICES (ataque y vista del enemigo)

while cantaciertos != cantbarcos:
    print(" ")
    print("")
    print("MATRIZ QUE IRIAMOS A ATACAR (OCULTA)")
    for i in range(0, tamaño):
        print("")
        for j in range(0, tamaño):
            print(ataquejugador[i][j], " ", end="", flush=True)

    print(" ")
    print(" ")

    print("MATRIZ QUE MARCA LAS COORDENADAS (VISTA)")
    for i in range(0, tamaño):
        print("")
        for j in range(0, tamaño):
            print(vistajugador[i][j], " ", end="", flush=True)

    print(" ")
    print("Elige una posicion para atacar [x][y] de 0 a 4 (de arriba para abajo): ")
    x = input()
    y = input()


    if ataquejugador[int(x)][int(y)] == 0:
        vistajugador[int(x)][int(y)] = 1
        print("MISS (vacio)")
    else:
        print("HIT (barco)")
        vistajugador[int(x)][int(y)] = 1
        cantaciertos = cantaciertos + 1
# FIN WHILE (JUEGO)

print("A GANADO")






