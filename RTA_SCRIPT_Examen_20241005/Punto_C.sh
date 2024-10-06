#!/bin/bash
echo "Primero creo los dos grupos secundarios."
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores
echo "Luego cambio la clave del usuario vagrant."
sudo passwd vagrant << EOF
clave1
clave1
EOF
echo "Creo todos los usuarios con la misma clave que vagrant."
sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A1
sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A2
sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A3
sudo useradd -m -s /bin/bash -G p1c2_2024_gProfesores -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_P1
echo "Cambio los propietarios y grupos a las carpetas creadas en el Punto_A."
sudo chown -R p1c2_2024_A1:p1c2_2024_gAlumno Examenes-UTN/alumno_1/
sudo chown -R p1c2_2024_A2:p1c2_2024_gAlumno Examenes-UTN/alumno_2/
sudo chown -R p1c2_2024_A3:p1c2_2024_gAlumno Examenes-UTN/alumno_3/
sudo chown -R p1c2_2024_P1:p1c2_2024_gProfesores Examenes-UTN/profesores/
echo "Cambio los permisos de cada carpeta."
sudo chmod 750 Examenes-UTN/alumno_1/
sudo chmod 760 Examenes-UTN/alumno_2/
sudo chmod 700 Examenes-UTN/alumno_3/
echo "Habilito todos los permisos para que los demás usuarios puedan acceder a la carpeta '.'."
sudo chmod 777 .
echo "Creo el archivo 'validar.txt' con el nombre de cada usuario en sus respectivas carpetas."
su -c "whoami > Examenes-UTN/alumno_1/validar.txt" p1c2_2024_A1 << EOF
clave1
EOF
su -c "whoami > Examenes-UTN/alumno_2/validar.txt" p1c2_2024_A2 << EOF
clave1
EOF
su -c "whoami > Examenes-UTN/alumno_3/validar.txt" p1c2_2024_A3 << EOF
clave1
EOF
su -c "whoami > Examenes-UTN/profesores/validar.txt" p1c2_2024_P1 << EOF
clave1
EOF
echo "Muestro el contenido de los archivos."
su -c "cat Examenes-UTN/alumno_1/validar.txt" p1c2_2024_A1 << EOF
clave1
EOF
su -c "cat Examenes-UTN/alumno_2/validar.txt" p1c2_2024_A2 << EOF
clave1
EOF
su -c "cat Examenes-UTN/alumno_3/validar.txt" p1c2_2024_A3 << EOF
clave1
EOF
su -c "cat Examenes-UTN/profesores/validar.txt" p1c2_2024_P1 << EOF
clave1
EOF
