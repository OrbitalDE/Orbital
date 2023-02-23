#!/usr/bin/bash

Clock(){
    DATETIME=$(date "+%a %-d %b, %-l:%M %p")
    echo -e -n "${DATETIME}"
}

User(){
    echo -n $USER@$(hostname)
}

Music(){
     echo -n $(playerctl metadata title) "-" $(playerctl metadata album) "by" $(playerctl metadata artist)
}

Cpu(){
    c=$(top -bn1 | grep "Cpu(s)" | \
           sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | \
           awk '{print 100 - $1}')
    line="    "
    printf "${line:${#c}}""%s %s" $c%


}

Memory(){
     mem=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
     memp=${mem:0:-2}%
     line="       "
     printf "${line:${#memp}}""%s %s" $memp
}
 
Sound(){
    NOTMUTED=$( amixer sget Master | grep "\[on\]" )
    if [[ ! -z $NOTMUTED ]] ; then
        VOL=$(awk -F"[][]" '/dB/ { print $2 }' <(amixer sget Master) | sed 's/%//g')
        if [ $VOL -ge 85 ] ; then
            echo -e "${VOL}%"
        elif [ $VOL -ge 50 ] ; then
            echo -e "${VOL}%"
        else
            echo -e "${VOL}%"
        fi
    else
        echo -e " Muted"
    fi
}


while true; do
	echo -e "$(User) [cpu: $(Cpu)] [memory: $(Memory)] [volume: $(Sound)] $(Clock)"
	#Uncomment the sleep command here if $(Network) isn't active otherwise the sleep command is provided in it
	#sleep 1s
done
