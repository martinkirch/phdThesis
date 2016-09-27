load '../common.gp'


set key right bottom

set format x "10^{%L}"
set logscale x
set xlabel "Item occurrences count" #offset 0,0.5
set ylabel "Cumulated frequency" #offset 2,0

set yrange [0:1.1]

set output "itemFreqCumulativeDistributions.ps"
plot 'itemFreqCumulativeDist-lastfm.dat' using 1:2 title 'LastFM' ls 1 lw 3 ps 0  ,\
	'itemFreqCumulativeDist-webdocs.dat' using 1:2 title 'WebDocs' ls 2 lw 3 ps 0 ,\
	'tickets2013.cumItemsPerSup' using 1:2 title 'prod\_assoc\_receipt' ls 4 lw 3 ps 0 ,\
	'tickets2013-perClient.cumItemsPerSup' using 1:2 title 'prod\_assoc\_client' ls 3 lw 3 ps 0 ,\
	'tickets-populations-categories-2013.cumItemsPerSupport' using 1:2 title 'demo\_assoc' ls 10 lw 3 ps 0
#	'itemFreqCumulativeDist-accidents.dat' using 1:2 title 'Accidents' ls 3 lw 4 ps 0
#'DATALYSE_TICKET_20140703.cumItemsPerSupport' using 2:($1/389372) title 'Supermarket' ls 3 lw 3 ps 0 ,\
