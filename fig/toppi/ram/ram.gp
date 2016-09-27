load '../../common.gp'

#2 per line so change size
#set size 0.47,0.35

set xlabel "k" #offset 0,0.5
set ylabel "Peak RAM usage (GB)" # offset 1,0

set key invert at 600,40

#set xtics 100
#set ytics 1

set output "RAM-all.ps"
plot 'lastfm.dat-s2-t16-toppi-RAMPerK.dat' using 1:($2/(1024*1024*1024))  title 'LastFM' ls 1 ,\
	'tickets2013-perClient-s2-t16-toppi-RAMPerK.dat' using 1:($2/(1024*1024*1024))  title 'prod\_assoc\_client' ls 3  ,\
	'tickets2013-s2-t16-toppi-RAMPerK.dat' using 1:($2/(1024*1024*1024))  title 'prod\_assoc\_receipt' ls 2

	set output "RAM-naive.ps"
	plot 'lastfm.dat-s2-t16-naive-RAMPerK.dat' using 1:($2/(1024*1024*1024))  title 'LastFM' ls 1 ,\
		'tickets2013-perClient-s2-t16-naive-RAMPerK.dat' using 1:($2/(1024*1024*1024))  title 'prod\_assoc\_client' ls 3  ,\
		'tickets2013-s2-t16-naive-RAMPerK.dat' using 1:($2/(1024*1024*1024))  title 'prod\_assoc\_receipt' ls 2
