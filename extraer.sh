#!/bin/bash

directorios=(/1G /2G /3G /4G)
carpetas_pruebas=(/1 /2 /3 /4)
nodos=(/cliente01 /cliente02 /cliente03 /master /nodo1 /servidor01)
declare -a lista

#crear carpetas con pruebas
# echo "creando directorios 1,2,3,4 ..."
# for dir in "${directorios[@]}"
# do
#     for prueba in "${carpetas_pruebas[@]}"
#     do
#         mkdir -p /home/pegroman/Desktop/bmi/pruebas/prueba"$dir$prueba"
#     done
# done
# echo "fin directorios 1,2,3,4"

# echo "mover zips en cada prueba"
# for dir in "${directorios[@]}"
# do
#     lista=($(ls /home/pegroman/Desktop/bmi/pruebas/prueba"$dir"/*.zip))
#     contador=0
#     for prueba in "${carpetas_pruebas[@]}"
#     do
#         mv ${lista[contador]} /home/pegroman/Desktop/bmi/pruebas/prueba"$dir$prueba"
#         ((contador+=1))
#     done
# done
# echo "fin mover zips"

# echo "unzip y crear directorios con nombres de nodos"
# for dir in "${directorios[@]}"
# do
#     for prueba in "${carpetas_pruebas[@]}"
#     do
#         unzip /home/pegroman/Desktop/bmi/pruebas/prueba"$dir$prueba"/*.zip -d /home/pegroman/Desktop/bmi/pruebas/prueba"$dir$prueba"
#         mkdir -p /home/pegroman/Desktop/bmi/pruebas/prueba"$dir$prueba"/{cliente01,cliente02,cliente03,master,nodo1,servidor01}
#     done
# done   
# echo "fin unzip y crear directorios con nombres de nodos"

# echo "mover zips dentro del nombre correspondiente"
# for dir in "${directorios[@]}"
# do
#     for prueba in "${carpetas_pruebas[@]}"
#     do
#         lista=($(ls /home/pegroman/Desktop/bmi/pruebas/prueba"$dir$prueba"/*.zip))
#         contador=0
#         for i in "${nodos[@]}"
#         do
#             mv ${lista[contador]} /home/pegroman/Desktop/bmi/pruebas/prueba"$dir$prueba$i"
#             ((contador+=1))
#         done
#     done
# done   
# echo "fin mover zips"

echo "extraer zip finales de nodos"
for dir in "${directorios[@]}"
do
    for prueba in "${carpetas_pruebas[@]}"
    do
        for i in "${nodos[@]}"
        do
            unzip /home/pegroman/Desktop/bmi/pruebas/prueba"$dir$prueba$i"/*.zip -d /home/pegroman/Desktop/bmi/pruebas/prueba"$dir$prueba$i"
        done
    done
done 
echo "fin extraer zip finales nodos"