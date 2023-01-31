#!/bin/bash 



# Inicializar la matriz del juego 

board=(. . . . . . . . .)
board_info=(0 1 2 3 4 5 6 7 8)


# Función para imprimir la matriz 
print_board_info(){
echo "Estas son las posiciones del tablero: "
  echo " ${board_info[0]} | ${board_info[1]} | ${board_info[2]} " 

  echo "---+---+---" 

  echo " ${board_info[3]} | ${board_info[4]} | ${board_info[5]} " 

  echo "---+---+---" 

  echo " ${board_info[6]} | ${board_info[7]} | ${board_info[8]} " 

}


print_board() {

  echo " ${board[0]} | ${board[1]} | ${board[2]} " 

  echo "---+---+---" 

  echo " ${board[3]} | ${board[4]} | ${board[5]} " 

  echo "---+---+---" 

  echo " ${board[6]} | ${board[7]} | ${board[8]} " 

}
print_board_info
print_board
