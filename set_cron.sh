CMD_ST="~/malsice/bee/play.sh ~/malsice/j/zacatek.mp3"
CMD_5M="~/malsice/bee/play.sh ~/malsice/j/5minut.mp3"
CMD_END="~/malsice/bee/play.sh ~/malsice/j/konec.mp3"

#zacatek 4m
#5minut 1m
#konec 1m

crontab <<EOF
#sobota start
41 8 * * 6 $CMD_ST
41 9 * * 6 $CMD_ST
11 11 * * 6 $CMD_ST
41 12 * * 6 $CMD_ST
11 14 * * 6 $CMD_ST
41 15 * * 6 $CMD_ST
11 17 * * 6 $CMD_ST
#sobota 5 minut
29 9 * * 6 $CMD_5M
59 10 * * 6 $CMD_5M
29 12 * * 6 $CMD_5M
59 13 * * 6 $CMD_5M
29 15 * * 6 $CMD_5M
59 16 * * 6 $CMD_5M
29 18 * * 6 $CMD_5M
#sobota konec
34 9 * * 6 $CMD_END
04 11 * * 6 $CMD_END
34 12 * * 6 $CMD_END
04 14 * * 6 $CMD_END
34 15 * * 6 $CMD_END
04 17 * * 6 $CMD_END
34 18 * * 6 $CMD_END

#nedele start
26 8 * * 0 $CMD_ST
26 9 * * 0 $CMD_ST
56 10 * * 0 $CMD_ST
56 11 * * 0 $CMD_ST
26 13 * * 0 $CMD_ST
26 14 * * 0 $CMD_ST
#nedele 5 minut
14 9 * * 0 $CMD_5M
44 10 * * 0 $CMD_5M
44 11 * * 0 $CMD_5M
14 13 * * 0 $CMD_5M
14 14 * * 0 $CMD_5M
44 15 * * 0 $CMD_5M
#nedele konec
19 9 * * 0 $CMD_END
49 10 * * 0 $CMD_END
49 11 * * 0 $CMD_END
19 13 * * 0 $CMD_END
19 14 * * 0 $CMD_END
49 15 * * 0 $CMD_END
EOF

