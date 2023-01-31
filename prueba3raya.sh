#!/bin/bash

declare -A board

# initialize the board
for i in {0..2}; do
  for j in {0..2}; do
    board[$i,$j]="-"
  done
done

# display the board
displayBoard() {
  for i in {0..2}; do
    for j in {0..2}; do
      echo -n "${board[$i,$j]} "
    done
    echo
  done
}

# update the board
updateBoard() {
  read -p "Enter the row (0-2): " row
  read -p "Enter the column (0-2): " col
  board[$row,$col]="X"
}

# check if the game is won
checkWin() {
  for i in {0..2}; do
    # check rows
    if [ "${board[$i,0]}" == "X" ] && [ "${board[$i,1]}" == "X" ] && [ "${board[$i,2]}" == "X" ]; then
      echo "You won!"
      return 0
    fi
    # check columns
    if [ "${board[0,$i]}" == "X" ] && [ "${board[1,$i]}" == "X" ] && [ "${board[2,$i]}" == "X" ]; then
      echo "You won!"
      return 0
    fi
  done
  # check diagonals
  if [ "${board[0,0]}" == "X" ] && [ "${board[1,1]}" == "X" ] && [ "${board[2,2]}" == "X" ]; then
    echo "You won!"
    return 0
  fi
  if [ "${board[0,2]}" == "X" ] && [ "${board[1,1]}" == "X" ] && [ "${board[2,0]}" == "X" ]; then
    echo "You won!"
    return 0
  fi
  echo "Keep playing..."
  return 1
}

# main loop
while true; do
  displayBoard
  updateBoard
  if checkWin -ne 1; then
    break
  fi
done

