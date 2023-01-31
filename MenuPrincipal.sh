#!/bin/bash

# Inicializar la matriz del juego 
reiniciar() {
    board=(. . . . . . . . .)
}

# Función para verificar si alguien ganó 

check_win() { 

  player=$1 

  if [ ${board[0]} == $player ] && [ ${board[1]} == $player ] && [ ${board[2]} == $player ]; then 
    echo "$player wins!" 
    return 0 
  elif [ ${board[3]} == $player ] && [ ${board[4]} == $player ] && [ ${board[5]} == $player ]; then 
    echo "$player wins!" 
    return 0 
  elif [ ${board[6]} == $player ] && [ ${board[7]} == $player ] && [ ${board[8]} == $player ]; then 
    echo "$player wins!" 
    return 0 
  elif [ ${board[0]} == $player ] && [ ${board[3]} == $player ] && [ ${board[6]} == $player ]; then 
    echo "$player wins!" 
    return 0 
  elif [ ${board[1]} == $player ] && [ ${board[4]} == $player ] && [ ${board[7]} == $player ]; then 
    echo "$player wins!" 
    return 0 
  elif [ ${board[2]} == $player ] && [ ${board[5]} == $player ] && [ ${board[8]} == $player ]; then 
    echo "$player wins!" 
    return 0 
  elif [ ${board[0]} == $player ] && [ ${board[4]} == $player ] && [ ${board[8]} == $player ]; then 
    echo "$player wins!" 
    return 0 
  elif [ ${board[2]} == $player ] && [ ${board[4]} == $player ] && [ ${board[6]} == $player ]; then 
    echo "$player wins!" 
    return 0 
  else 
    return 1 
  fi 
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
    player="X"
    if check_win $player; then 
    exit 0 
    fi
    ;;
    "3")
    ##AÑADIR CÓDIGO MOVER JUGADOR 2
    player="O"
    if check_win $player; then 
    exit 0 
    fi
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
