# jingles
How to play jingles at (frisbee) tournament

## Widnows reseni
Je potreba
- stahnout prastarou aplikaci z http://praguedevils.org/beeplay.zip
- winamp (mozna nejakou starsi verzi) pro prehravani muziky
- jingly v nekomprimovanem wav formatu (umi napr nejaky output plugin do winampu)
 
 V aplikaci beeplay se nastavi cesta k jinglum a casove rozestupy, pak se spusti timer. Aplikace odpocitava offesty u jednotlivych jinglu, kdyz se offset dostane na nulu, pausne se winamp, prehraje jingl a zase se spusti hudba z winampu. Jingly muzou mit jinou hlasitost. Pro simulaci (vyzkouseni) lze nastavit kratsi interval ms pro jednu minutu - cas pak bezi rychleji.
 
## Linux reseni
Je potreba
- skripty z teto repo
- vlc pro prehravani hudby
- mplayer pro prehrani jinglu (sudo apt-get install mplayer)
- netcat (nc) snad je standardni soucast linuxu (man nc)
- amixer pro nastaveni hlasitosti - snad je standardni soucast linuxu (man amixer)
- jingly muzou byt mp3 - cokoliv co mplayer prehraje

Jednotlive skripty delaji
- vlc.sh - nastavi hlasitost mixeru a pusti vlc s extra interfacem, aby sel ovladat zvenku skriptem (jinak by nefungovalo zastaveni hudby)
- vol.sh - nastaveni hlasitosti, jen wrapper kolem amixer, snadno umoznuje nahradit amixer jinym toolem. Pouzity v play.sh
- play.sh - vlastni pusteni jinglu, tedy posle pros nc pause do vlc (pauza hudby), pusti jingle pres mplayer, pak odpauzuje vlc
- set_cron.sh - nastavi crontab aktualnimu useru pro spouseni play.sh podle rozpisu. Musi se upravit dle rozpisu a delky trvani jinglu
