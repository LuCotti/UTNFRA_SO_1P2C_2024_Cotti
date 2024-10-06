#!/bin/bash
# Punto B
sudo fdisk /dev/sdc << EOF
n



+1G
n



+1G
n



+1G
n


+7166M
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1014M
w
EOF
sudo mkfs -t ext4 /dev/sdc1
sudo mkfs -t ext4 /dev/sdc2
sudo mkfs -t ext4 /dev/sdc3
sudo mkfs -t ext4 /dev/sdc5
sudo mkfs -t ext4 /dev/sdc6
sudo mkfs -t ext4 /dev/sdc7
sudo mkfs -t ext4 /dev/sdc8
sudo mkfs -t ext4 /dev/sdc9
sudo mkfs -t ext4 /dev/sdc10
sudo mkfs -t ext4 /dev/sdc11
sudo mount /dev/sdc1 Examenes-UTN/alumno_1/parcial_1
sudo mount /dev/sdc2 Examenes-UTN/alumno_1/parcial_2
sudo mount /dev/sdc3 Examenes-UTN/alumno_1/parcial_3
sudo mount /dev/sdc5 Examenes-UTN/alumno_2/parcial_1
sudo mount /dev/sdc6 Examenes-UTN/alumno_2/parcial_2
sudo mount /dev/sdc7 Examenes-UTN/alumno_2/parcial_3
sudo mount /dev/sdc8 Examenes-UTN/alumno_3/parcial_1
sudo mount /dev/sdc9 Examenes-UTN/alumno_3/parcial_2
sudo mount /dev/sdc10 Examenes-UTN/alumno_3/parcial_3
sudo mount /dev/sdc11 Examenes-UTN/profesores

