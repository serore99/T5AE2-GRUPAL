#!/bin/bash

# Función para dibujar el tablero
function draw_board {
  clear
  echo " 1 | 2 | 3 "
  echo "---+---+---"
  echo " 4 | 5 | 6 "
  echo "---+---+---"
  echo " 7 | 8 | 9 "
}

# Función para actualizar el tablero con una jugada
function update_board {
  local board=$1
  local cell=$2
  local player=$3
  local new_board=""
  for ((i=0; i<9; i++))
  do
    if [ $i -eq $((cell-1)) ]; then
      new_board="${new_board}${player}"
    else
      new_board="${new_board}${board:$i:1}"
    fi
  done
  echo "$new_board"
}

# Función para imprimir el tablero con jugadas
function print_board {
  local board=$1
  echo "${board:0:1} | ${board:1:1} | ${board:2:1}"
  echo "---+---+---"
  echo "${board:3:1} | ${board:4:1} | ${board:5:1}"
  echo "---+---+---"
  echo "${board:6:1} | ${board:7:1} | ${board:8:1}"
}

# Función para revisar si hay un ganador
function check_win {
  local board=$1
  if [ "${board:0:1}" == "${board:1:1}" ] && [ "${board:0:1}" == "${board:2:1}" ] && [ "${board:0:1}" != " " ]; then
    echo "win"
    return 0
  elif [ "${board:3:1}" == "${board:4:1}" ] && [ "${board:3:1}" == "${board:5:1}" ] && [ "${board:3:1}" != " " ]; then
    echo "win"
    return 0
  elif [ "${board:6:1}" == "${board:7:1}" ] && [ "${board:6:1}" == "${board:8:1}" ] && [ "${board:6:1}" != " " ]; then
    echo "win"
    return 0
  elif [ "${board:0:1}" == "${board:3:1}" ] && [ "${board:0:1}" == "${board:6:1}" ] && [ "${board:0:1}" != " " ]; then
    echo "win"
    return 0
  elif [ "${board:1:1}" == "${board:4:1}" ] && [ "${board:1:1}" == "${board:7:1}" ] && [ "${board:1:1}" != " " ]; then
    echo "win"
    return 0
     elif [ "${board:2:1}" == "${board:5:1}" ] && [ "${board:2:1}" == "${board:8:1}" ] && [ "${board:2:1}" != " " ]; then
    echo "win"
    return 0
  elif [ "${board:0:1}" == "${board:4:1}" ] && [ "${board:0:1}" == "${board:8:1}" ] && [ "${board:0:1}" != " " ]; then
    echo "win"
    return 0
  elif [ "${board:2:1}" == "${board:4:1}" ] && [ "${board:2:1}" == "${board:6:1}" ] && [ "${board:2:1}" != " " ]; then
    echo "win"
    return 0
  else
    echo "continue"
  fi
}

# Inicialización del tablero
board="         "

# Bucle de juego
while true
do
  draw_board
  player="X"
  print_board "$board"
  echo "Jugador $player, ingrese su jugada (1-9):"
  read cell
  if [ "$cell" -lt 1 ] || [ "$cell" -gt 9 ]; then
    echo "Jugada inválida, intente de nuevo."
    continue
  fi
  if [ "${board:$((cell-1)):1}" != " " ]; then
    echo "Celda ocupada, intente de nuevo."
    continue
  fi
  board=$(update_board "$board" "$cell" "$player")
  win=$(check_win "$board")
  if [ "$win" == "win" ]; then
    draw_board
    print_board "$board"
    echo "¡Jugador $player gana!"
    break
  fi
  if [ "${board// /}" == "$board" ]; then
    draw_board
    print_board "$board"
    echo "Empate."
    break
  fi
  player="O"
  draw_board
  print_board "$board"
  echo "Jugador $player, ingrese su jugada (1-9):"
  read cell
  if [ "$cell" -lt 1 ] || [ "$cell" -gt 9 ]; then
    echo "Jugada inválida, intente de nuevo."
    continue
  fi
  if [ "${board:$((cell-1)):1}" != " " ]; then
    echo "Celda ocupada, intente de nuevo."
    continue
  fi
  board=$(update_board "$board" "$cell" "$player")
  win=$(check_win "$board")
  if [ "$win" == "win" ]; then
    draw_board
    print_board "$board"
    echo "¡Jugador $player gana!"
    break
  fi
  if [ "${board// /}" == "$board" ]; then
    draw_board
    print_board "$board"
     echo "Empate."
    break
  fi
done