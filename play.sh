#!/bin/sh
JING_VOL=100
MUSIC_VOL=80
# run vlc with
#   vlc --extraintf rc --rc-host localhost:11337

echo "pause" | /bin/nc  localhost 11337 -q 1
~/vol.sh $JING_VOL
/usr/bin/mplayer $1 >> ~/play.log 2>&1
#/usr/bin/cvlc --play-and-exit $1
~/vol.sh $MUSIC_VOL
echo "play" | /bin/nc  localhost 11337 -q 1
