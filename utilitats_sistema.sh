#!/bin/bash
benvinguda() {
    local nombre=$1

    echo "Hola $nombre, vamos a comprobar el sistema"
}

comprova_usuari() {
    local usuario=$1

    if grep -q "^$usuario:" /etc/passwd
    then
        echo "El usuario $usuario existe en el sistema."
    else
        echo "El usuario $usuario no existe en el sistema."
    fi
}

calculadora_espai() {
    echo ""
    echo "Espacio disponible en la partición principal:"
    df -h /
}
# Programa principal

read -p "Introduce tu nombre: " alumno
benvinguda "$alumno"

echo ""

read -p "Introduce un usuario del sistema: " usuario
comprova_usuari "$usuario"

echo ""

calculadora_espai
