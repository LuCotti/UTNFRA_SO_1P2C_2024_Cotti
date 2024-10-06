#!/bin/bash
echo "Filtro la información del total de memoria ram y la paso al archivo 'Filtro_Basico.txt'."
grep MemTotal /proc/meminfo > repogit/UTNFRA_SO_1P2C_2024_Cotti/RTA_ARCHIVOS_Examen_20241005/Filtro_Basico.txt
echo "Agrego la información del fabricante del chassis."
sudo dmidecode -t chassis | grep Chassis -A 1 >> repogit/UTNFRA_SO_1P2C_2024_Cotti/RTA_ARCHIVOS_Examen_20241005/Filtro_Basico.txt
echo "Leo el archivo 'Filtro_Basico.txt'."
cat repogit/UTNFRA_SO_1P2C_2024_Cotti/RTA_ARCHIVOS_Examen_20241005/Filtro_Basico.txt

