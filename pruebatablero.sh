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

  

# Función para marcar una casilla 

mark() { 

  player=$1 

  move=$2 

  board[$move]=$player 

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

  

# Juego principal 

echo "Bienvenido al juego 3 en raya!" 

print_board 

  

player="X" 

move=0 

  

while [ $move -lt 9 ]; do 

  echo "Turno de $player. ¿Dónde quieres mover? (0-8)" 

  read move 

  mark $player $move 

  print_board 

  if check_win $player; then 

    exit 0 

  fi 

  if [ $player == "X" ]; then 

    player="O" 

  else 

    player="X" 

  fi 

done 