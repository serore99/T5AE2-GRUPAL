#!/bin/bash

opcion=0

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
    echo "----------------------------------------------"
    echo " "
    read -p "Selecciona una opcióN (1..4): " opcion
    echo " "

    case $opcion in 
    "1")
    ##INSERTAR CÓDIGO PARA REINICIAR PARTIDA
    ##AÑADIR LLAMADA A SCRIPT DE TABLERO VACÍO
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
    esac

done