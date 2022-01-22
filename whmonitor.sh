#!/bin/bash
#Programado por WhBeatZ
#No me hago responsable del mal uso que le den a mi herramienta xd
#Mi insta ---> WhBeatZ

#colores

blanco="\033[1;37m"
magenta="\033[0;35m"
rojo="\033[1;31m"
verde="\033[1;32m"
amarillo="\033[1;33m"
cyan="\033[1;36m"

#Instalacion xd

clear

echo -e "amarillo""Instalando requisitos..."
pkg install bash
pkg install curl
pkg install pkg install mc
clear

echo -e "cyan""Instalando WhPhisher..."

cd..
git clone https://github.com/WhBeatZ/WhPhisher
cd WhPhisher
chmod +x *
cd ..
clear

echo -e "amarillo""Iniciando WhMonitor..."
cd WhMonitor
clear


#menu

function menu (){
echo -e $cyan
echo -e "   _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ " $cyan
echo -e "  |                                                                     |"
echo -e "  |  "$amarillo"1."$blanco" Configurar kernel :D (Solo la primera vez)"$cyan"                      |"
echo -e "  |  "$amarillo"2."$blanco" Poner en modo monitor"$cyan"                                           |"
echo -e "  |  "$amarillo"3."$blanco" Quitar modo monitor"$cyan"                                             |"
echo -e "  |  "$amarillo"4."$blanco" Salir"$cyan"                                                           |"
echo -e "  |_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _|" $amarillo
echo -e
echo -n "---> "
read opcion
case "$opcion" in
"1")
	one
	;;
"1.")

        one
        ;;
"2")
	ada
	;;

"2.")   ada
        ;;

"3")
    procesisng
    ;;

"3.")
    procesisng
    ;;

"4")
    salir
    ;;

"4.")
    salir
    ;;

*)
    sleep 0.1 && echo -e $rojo "Que carajos pusiste?? xdxd"
	sleep 2


echo -e ""
echo -e ""
echo -e ""


	menu
	;;
esac
}

#cargar modulos y compilar archivos :v

function one () {
    clear
    echo -e $amarillo"     Esto va a tardar un poco, se paciente :D"
    sudo rmmod r8188eu.ko
    cd rtl8188eus
    sudo echo "blacklist r8188eu.ko" > "/etc/modprobe.d/realtek.conf"
    echo -e $magenta"     Compilando :D ..."
    make
    sudo make install
    sudo modprobe 8188eu
    clear && cd ..
    echo -e $amarillo"     Compilando :D ..."
    sleep 3
    echo -e $amarillo " "

echo -e ""
echo -e ""
echo -e ""
echo -e ""


    menu
}



#Antena funcion
function ada () {
    sudo airmon-ng
    echo -e " "$cyan" Escribe el nombre de tu targeta " $magenta"("$cyan"ej" $blanco"wlan0" $cyan"o" $blanco"wlan1"$magenta")"
    echo -n " ---> "
    read antena
    echo -e " "$amarillo"¿Estas seguro de que es tu antena?" $magenta"("$blanco"y"$cyan"/"$blanco"n"$amarillo")"
    echo -e " "$cyan"Nombre de la antena: "$blanco "$antena"
    echo -n " ---> "
    read opcion
    if [ $opcion2 == "y" ]; then
        dos
    else
        clear
        echo -e "$verde"
echo -e -+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
echo -e "$cyan""    __        ___     __  __             _ _                 "
echo -e "$blanco""    \ \      / / |__ |  \/  | ___  _ __ (_) |_ ___  _ __     "
echo -e "$amarillo""     \ \ /\ / /| '_ \| |\/| |/ _ \| '_ \| | __/ _ \| '__|    "
echo -e "$cyan""      \ V  V / | | | | |  | | (_) | | | | | || (_) | |       "
echo -e "$blanco""       \_/\_/  |_| |_|_|  |_|\___/|_| |_|_|\__\___/|_|    ""$rojo""v1.0"
echo -e
echo -e "$verde"-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ 

     ada
    fi
}


#esto coloca la antena en modo monitor
function dos () {

    #nota: en esta parte es la que cambiaras el nombre de la antena, si es  wlan0 o wlan1

    clear && sleep 1
    sudo rmmod r8188eu.ko
    sudo modprobe 8188eu
    clear
    echo -e "$verde"
echo -e -+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
echo -e "$cyan""    __        ___     __  __             _ _                 "
echo -e "$blanco""    \ \      / / |__ |  \/  | ___  _ __ (_) |_ ___  _ __     "
echo -e "$amarillo""     \ \ /\ / /| '_ \| |\/| |/ _ \| '_ \| | __/ _ \| '__|    "
echo -e "$cyan""      \ V  V / | | | | |  | | (_) | | | | | || (_) | |       "
echo -e "$blanco""       \_/\_/  |_| |_|_|  |_|\___/|_| |_|_|\__\___/|_|    ""$rojo""v1.0"
echo -e
echo -e "$verde"-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    echo -e $cyan "Desconecta tu antena, y vuelvela a conectar. Despues presiona (Enter) para continuar :D" && sleep 1
    read intro
    echo -e $rojo" Matando las Conexiones, y poniendo en modo Monitor"
    sudo airmon-ng check kill
    sudo ifconfig $antena down
    sudo iw dev $antena set type monitor
    sudo ifconfig $antena up
    clear
    echo -e $cyan"   Modo Monitor Activado :D Mira --->" && sleep 2
    sudo airodump-ng $antena
    echo -e $magenta"   Gracias por usar WhMonitor" && sleep 5
    clear_console

}


#restaurar procesos
function procesisng () {
$magenta
echo -e "$verde"
echo -e -+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
echo -e "$cyan""    __        ___     __  __             _ _                 "
echo -e "$blanco""    \ \      / / |__ |  \/  | ___  _ __ (_) |_ ___  _ __     "
echo -e "$amarillo""     \ \ /\ / /| '_ \| |\/| |/ _ \| '_ \| | __/ _ \| '__|    "
echo -e "$cyan""      \ V  V / | | | | |  | | (_) | | | | | || (_) | |       "
echo -e "$blanco""       \_/\_/  |_| |_|_|  |_|\___/|_| |_|_|\__\___/|_|    ""$rojo""v1.0"
echo -e
echo -e "$verde"-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
sudo airmon-ng
echo -e " "$cyan" Escribe el nombre de tu targeta " $magenta"("$cyan"ej" $blanco"wlan0" $cyan"o" $blanco"wlan1"$magenta")"
echo -n " ---> "
read antena
echo -e $amarillo" Restaurando los procesos :D ..."
echo -e " "$blanco" Tienes que desconectar y volver a conectar tu antena :D"
sudo systemctl restart NetworkManager.service
sudo service wpa_supplicant start
sudo ifconfig $antena down
sudo iw dev $antena set type managed
sudo ifconfig $antena up

}

#exit
function salir () {
    echo -e $verde" Gracias por usar WhMonitor" && sleep 5
    clear_console
}


#esto comprueba el root o el super usuario
if [ "$(id -u)" == "0" ]; then
 echo -e $azul " "
echo -e "$verde"
echo -e -+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
echo -e "$cyan""    __        ___     __  __             _ _                 "
echo -e "$blanco""    \ \      / / |__ |  \/  | ___  _ __ (_) |_ ___  _ __     "
echo -e "$amarillo""     \ \ /\ / /| '_ \| |\/| |/ _ \| '_ \| | __/ _ \| '__|    "
echo -e "$cyan""      \ V  V / | | | | |  | | (_) | | | | | || (_) | |       "
echo -e "$blanco""       \_/\_/  |_| |_|_|  |_|\___/|_| |_|_|\__\___/|_|    ""$rojo""v1.0"
echo -e
echo -e "$verde"-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 menu
else
    echo -e $rojo "Es necesario ser root para que WhMonitor funcione :c"
fi
