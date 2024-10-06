#!/bin/bash
echo "Creo la estructura."
mkdir -p $HOME/Estructura_Asimetrica/{{correo,clientes}/cartas{1..100},correo/carteros{1..10}}
echo "Valido la estructura."
tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 90 --column 4

