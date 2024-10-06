#!/bin/bash
echo "Primero me muevo a la carpeta del repositorio."
cd repogit/UTNFRA_SO_1P2C_2024_Cotti
echo "Filtro todas las líneas y las envío al archivo 'Filtro_Avanzado.txt'."
echo -e "Mi IP Publica es: $(curl -s ifconfig.me | grep -v vagrant)\nMi usuario es: $(whoami)\nEl Hash de mi Usuario es: $(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')\nLa URL de mi repositorio es: $(git remote get-url origin)" > RTA_ARCHIVOS_Examen_20241005/Filtro_Avanzado.txt
echo "Leo el archivo 'Filtro_Avanzado.txt'."
cat RTA_ARCHIVOS_Examen_20241005/Filtro_Avanzado.txt

