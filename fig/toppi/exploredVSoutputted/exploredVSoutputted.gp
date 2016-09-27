load '../../common.gp'

set size 0.60,0.45

set xlabel "k" #offset 0,0.5
set ylabel "#itemsets" offset 2,0

#set key left Left top reverse # spacing .8 font ",9"
set key left top	invert

set xrange [0:100]

set output "nbTraversed-perK-lastfm-s2.ps"
plot 'lastfm.dat-s2-t16-toppi-TraversedPerK.dat' using 1:2 title 'Outputted' ls 1 ,\
	'lastfm.dat-s2-t16-toppi-TraversedPerK.dat' using 1:3 title 'Enumerated by TopPI' ls 2 ,\
	'lastfm.dat-s2-t16-naive-TraversedPerK.dat' using 1:3 title 'Enumerated by baseline' ls 3

set ytics 10000000

set output "nbTraversed-perK-tickets2013-s2.ps"
plot 'tickets2013-s2-t16-toppi-TraversedPerK.dat' using 1:2 title 'Outputted' ls 1 ,\
	'tickets2013-s2-t16-toppi-TraversedPerK.dat' using 1:3 title 'Enumerated by TopPI' ls 2 ,\
	'tickets2013-s2-t16-naive-TraversedPerK.dat' using 1:3 title 'Enumerated by baseline' ls 3

set ytics auto
set key right center invert

set output "nbTraversed-perK-tickets2013-perClient-s2.ps"
plot 'tickets2013-perClient-s2-t16-toppi-TraversedPerK.dat' using 1:2 title 'Outputted' ls 1 ,\
	'tickets2013-perClient-s2-t16-toppi-TraversedPerK.dat' using 1:3 title 'Enumerated by TopPI' ls 2 ,\
	'tickets2013-perClient-s2-t16-naive-TraversedPerK.dat' using 1:3 title 'Enumerated by baseline' ls 3



unset key
set output "nbTraversed-perK-all.ps"
set multiplot layout 2,2 rowsfirst

set title 'LastFM'
plot 'lastfm.dat-s2-t16-toppi-TraversedPerK.dat' using 1:2 title 'Outputted' ls 1 ,\
	'lastfm.dat-s2-t16-toppi-TraversedPerK.dat' using 1:3 title 'Enumerated by TopPI' ls 2 ,\
	'lastfm.dat-s2-t16-naive-TraversedPerK.dat' using 1:3 title 'Enumerated by baseline' ls 3

set ytics 10000000
set title 'prod\_assoc\_receipt'
plot 'tickets2013-s2-t16-toppi-TraversedPerK.dat' using 1:2 title 'Outputted' ls 1 ,\
	'tickets2013-s2-t16-toppi-TraversedPerK.dat' using 1:3 title 'Enumerated by TopPI' ls 2 ,\
	'tickets2013-s2-t16-naive-TraversedPerK.dat' using 1:3 title 'Enumerated by baseline' ls 3

set ytics auto
set key at 260,1 invert
set title 'prod\_assoc\_client'
plot 'tickets2013-perClient-s2-t16-toppi-TraversedPerK.dat' using 1:2 title 'Outputted' ls 1 ,\
	'tickets2013-perClient-s2-t16-toppi-TraversedPerK.dat' using 1:3 title 'Enumerated by TopPI' ls 2 ,\
	'tickets2013-perClient-s2-t16-naive-TraversedPerK.dat' using 1:3 title 'Enumerated by baseline' ls 3


unset multiplot
