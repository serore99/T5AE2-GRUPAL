#!/bin/bash

# Inicializar la matriz del juego 
reiniciar() {
    board=(. . . . . . . . .)
}



# Función para imprimir la matriz

print_board() {

  echo " ${board[0]} | ${board[1]} | ${board[2]} "

  echo "---+---+---"

  echo " ${board[3]} | ${board[4]} | ${board[5]} "

  echo "---+---+---"

  echo " ${board[6]} | ${board[7]} | ${board[8]} "

}

# Función para marcar una casilla 

mark() { 

  player=$1 

  move=$2 

  board[$move]=$player 

} 

opcion=0

reiniciar

while [ $opcion -ne "4" ]
do
    echo ""
    echo "============================================="
    echo "----------------TRES EN RAYA----------------"
    echo "============================================="
    echo ""
    ./pruebatablero.sh          ##LLAMAMOS AL SCRIPT QUE VISUALIZA EL TABLERO CON LOS NUMEROS ORIENTATIVOS
    echo ""
    echo "-------------MENU DE OPCIONES------------------"
    echo "OPCIÓN 1: REINICIAR PARTIDA."
    echo "OPCIÓN 2: JUGADOR 1: MOVER."
    echo "OPCIÓN 3: JUGADOR 2: MOVER."
    echo "OPCIÓN 4: SALIR DEL JUEGO."
    echo "OPCIÓN 5: VER ESTADÍSTICAS."
    echo "----------------------------------------------"
    echo " "
    read -p "Selecciona una opcióN (1..4): " opcion
    echo " "

    case $opcion in 
    "1")
    ##INSERTAR CÓDIGO PARA REINICIAR PARTIDA
    reiniciar
    ;;
    "2")
    ##AÑADIR CÓDIGO MOVER JUGADOR 1
    ;;
    "3")
    ##AÑADIR CÓDIGO MOVER JUGADOR 2
    ;;
    "4")
    echo "FIN DEL JUEGO."
    break
    ;;
    "5")
    ##AÑADIR ESTADÍSTICAS
    ;;
    esac

done
