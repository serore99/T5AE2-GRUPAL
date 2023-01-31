#!/bin/bash

board=(. . . . . . . . .) 

mark() { 

  player=$1 

  move=$2 

  board[$move]=$player 

} 

print_board() { 

  echo " ${board[0]} | ${board[1]} | ${board[2]} " 

  echo "---+---+---" 

  echo " ${board[3]} | ${board[4]} | ${board[5]} " 

  echo "---+---+---" 

  echo " ${board[6]} | ${board[7]} | ${board[8]} " 

} 

mark X 1
mark O 4
print_board
