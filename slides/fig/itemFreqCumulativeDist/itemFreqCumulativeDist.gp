load '../common.gp'


set key right bottom

set format x "10^{%L}"
set logscale x
set xlabel "Item occurrences count" #offset 0,0.5
set ylabel "Cumulated frequency" #offset 2,0

set yrange [0:1.1]

set output "itemFreqCumulativeDistributions.ps"
plot 'tickets2013.cumItemsPerSup' using 1:2 title 'Tickets' ls 2 lw 3 ps 0 ,\
	'tickets2013-perClient.cumItemsPerSup' using 1:2 title 'Clients' ls 3 lw 3 ps 0 ,\
	'itemFreqCumulativeDist-lastfm.dat' using 1:2 title 'LastFM' ls 1 lw 3 ps 0  ,\
