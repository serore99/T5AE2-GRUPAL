#!/bin/bash

# Inicializar la matriz del juego 

board=(. . . . . . . . .)



# Función para imprimir la matriz

print_board() {

  echo " ${board[0]} | ${board[1]} | ${board[2]} "

  echo "---+---+---"

  echo " ${board[3]} | ${board[4]} | ${board[5]} "

  echo "---+---+---"

  echo " ${board[6]} | ${board[7]} | ${board[8]} "

}

opcion=0

while [ $opcion -ne "4" ]
do
    echo ""
    echo "============================================="
    echo "----------------TRES EN RAYA----------------"
    echo "============================================="
    echo ""
    echo "-------------MENU DE OPCIONES------------------"
    echo "OPCIÓN 1: REINICIAR PARTIDA."
    echo "OPCIÓN 2: JUGADOR 1: MOVER."
    echo "OPCIÓN 3: JUGADOR 2: MOVER."
    echo "OPCIÓN 4: SALIR DEL JUEGO."
    echo "----------------------------------------------"
    echo " "
    read -p "Selecciona una opcióN (1..4): " opcion
    echo " "

    case $opcion in 
    "1")
    ##AÑADIR LLAMADA A SCRIPT
    ;;
    "2")
    ##AÑADIR LLAMADA A SCRIPT
    ;;
    "3")
    ##AÑADIR LLAMADA A SCRIPT
    ;;
    "4")
    echo "FIN DEL JUEGO."
    break
    ;;
    esac

done
