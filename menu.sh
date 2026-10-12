#!/bin/bash
#Mostrar un saludo personalizado.
funcion_saludar() {
        local nombre="${1:-usuario}"
        echo "Hola,$nombre"
}
#Esta funcionj mueestra la fecha.
funcion_mostrar_fecha() {
        echo "Hoy es: $(date)"
}
#Esta fuincion finaliza el script.-
funcion_salir() {
        echo "Finalizar script."
        exit 0 #esto cierra el script por completo.
}

if [ $# -gt 0 ]; then
    case "$1" in
        1|-a|--add)
            funcion_saludar "$2"
            ;;
        2|-f|--fecha)
            funcion_mostrar_fecha
            ;;
        0|-s|--salir)
            funcion_salir
            ;;
        *)
            echo "Parámetro no válido"
            ;;
    esac
    exit 0
fi
while true; do
        echo "Este script cuenta con 3 opciones"
        echo "1 Nombre de usuario"
        echo "2 fecha actual"
        echo "0 salir"

        read -p "Introduce un valor del 0-2:" opcion
        echo ""
        case $opcion in
        0)
                echo "Finalizar script"
                funcion_salir "$funcion_salir"
                ;;
        1)
                read -p "Inserta un nombre:" funcion_saludar
                funcion_saludar "$funcion_saludar"
                ;;
        2)
                funcion_mostrar_fecha
                ;;
        *)
                echo "Valor incorrecto, introduce un valor del 0-2."
                ;;
        esac
        echo ""
        echo "fin"
done

echo "Selecciona una de las opciones para ejecutar una de ellas"
