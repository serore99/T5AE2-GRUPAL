#!/bin/bash

# Crear una matriz para el juego
declare -A board
board=( [1,1]='' [1,2]='' [1,3]='' [2,1]='' [2,2]='' [2,3]='' [3,1]='' [3,2]='' [3,3]='' )

# Función para dibujar el tablero
draw_board() {
    echo " ${board[1,1]} | ${board[1,2]} | ${board[1,3]} "
    echo "---+---+---"
    echo " ${board[2,1]} | ${board[2,2]} | ${board[2,3]} "
    echo "---+---+---"
    echo " ${board[3,1]} | ${board[3,2]} | ${board[3,3]} "
}

# Función para verificar si alguien ha ganado
check_win() {
    # Verificar si hay tres en raya en las filas
    for i in {1..3}; do
        if [ "${board[$i,1]}" == "$1" ] && [ "${board[$i,2]}" == "$1" ] && [ "${board[$i,3]}" == "$1" ]; then
            echo "$1 ha ganado!"
            exit 0
        fi
    done

    # Verificar si hay tres en raya en las columnas
    for i in {1..3}; do
        if [ "${board[1,$i]}" == "$1" ] && [ "${board[2,$i]}" == "$1" ] && [ "${board[3,$i]}" == "$1" ]; then
            echo "$1 ha ganado!"
            exit 0
        fi
    done

    # Verificar si hay tres en raya en las diagonales
    if [ "${board[1,1]}" == "$1" ] && [ "${board[2,2]}" == "$1" ] && [ "${board[3,3]}" == "$1" ]; then
        echo "$1 ha ganado!"
        exit 0
    fi
    if [ "${board[1,3]}" == "$1" ] && [ "${board[2,2]}" == "$1" ] && [ "${board[3,1]}" == "$1" ]; then
        echo "$1 ha ganado!"
        exit 0
    fi
}

# Juego
turn="X"
while true; do
    echo "Turno de $turn"
    draw_board
    echo -n "Seleccione una posición [fila columna]: "
    read row col
    if [ "${board[$row,$col]}" == "" ]; then
        board[$row,$col]=$turn
        check_win $turn
        if [ "$turn" == "X" ]; then
            turn="O"
        else
            turn="X"
        fi
    else
        echo "Posición no válida"
    fi
done