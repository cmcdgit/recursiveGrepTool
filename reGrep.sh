#!/bin/bash

srchFor=$@
searchFldr=$FOLDER
loc=$HOME/.reGrep/.lastfounddocs

 print_help_menu(){

    echo '---------------------------------------'
    echo '   Recursive Grep tool'
    echo '---------------------------------------'
    echo " navigate"
    echo " - Arrows or 'h','j','k' & 'l' to navigate  "
    echo " - press 'g' twice for top OR <shift + g> for bottom"
    echo ""
    echo " filter"
    echo ' - :%!grep whatYouAreLookingFor  to filter the buffer'
    echo ' - :%!grep -r whatYouAreLookingFor  to reverse filter'
    echo ''
    echo ' open source'
    echo ' - press <Ctrl + W> then <Ctrl + G> then <Shift + F> to open the source'
    echo ''
    echo ' filetypes'
    echo ' - add  --include *.c'
    echo ' - add  reGrep . --include *.c  to search for all files with that ext'
    echo ''
    echo " quit"
    echo ' - :qall!  to quit type'
    echo ''
    sleep 5

}


 while [ -n "$1" ]; do

     case "$1" in

     -h) print_help_menu ;;

     --help) print_help_menu ;;

     *) echo '' > $loc
        grep -rl $srchFor $searchFldr --color >> $loc
        vim $loc
        break ;;

     esac

     shift

 done


