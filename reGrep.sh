#!/bin/bash

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
echo " quit"
echo ' - :qall!  to quit type'
echo ''
sleep 5

srchFor=$@
searchFldr=$FOLDER
loc=$HOME/.reGrep/.lastfounddocs

echo '' > $loc
grep -rl $srchFor $searchFldr --color >> $loc
#grep -rl $srchFor $FOLDER --color >> $loc
vim $loc


