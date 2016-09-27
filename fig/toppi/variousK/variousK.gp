load '../../common.gp'

set size 0.60,0.45

set xlabel "k" #offset 0,0.5




########### RUNTIMES ################################

set key center right
set xtics 100
set ytics 200
set output "runtime-lastfm.ps"
set ylabel "Time (seconds)" offset 2,0
plot 'topKstudy-PFP-lastfm-s2-g20000.dat' using 1:2 title 'PFP' ls 2 ,\
	'lastfm-lcm-s2-g200-tPerK.dat' using 1:2  title 'TopPI' ls 1

set key top right
set ytics 500
set output "runtime-supermarket.ps"
plot 'supermarket-lcm-s2-g200-tPerK.dat' using 1:2  title 'TopPI' ls 1,\
	'topKstudy-PFP-supermarket-s2-g17000.dat' using 1:2 title 'PFP' ls 2


set xtics 10
set output "runtime-webdocs.ps"
plot 'measuresPerK-webdocs.dat' using 1:2  title 'TopPI' ls 1

set key center right
set xtics 100
set output "runtime-accidents.ps"
plot 'measuresPerK-accidents-s2.dat' using 1:2  title 'TopPI' ls 1,\
	'topKstudy-PFP-accidents-s2-g200.dat' using 1:2 title 'PFP' ls 2





exit

set xtics autofreq


########### VARIOUS - lastfm ################################

set output "patternsLengths-lastfm.ps"
set title "Average patterns length for lastfm's top-K (minsup = 5)"
set ylabel "Average patterns length"
plot 'measuresPerK-lastfm.dat' using 1:5  title 'TopPI' ls 2

set output "nbPatternsDividedByK-lastfm.ps"
set title "Equivalent full top-K entries for lastfm's top-K (minsup = 5)"
set ylabel "Full top-K entries"
plot 'measuresPerK-lastfm.dat' using 1:($4/$1)  title 'TopPI' ls 2

set output "nbPatternsPerFreqItem-lastfm.ps"
set title "Patterns count per frequent item for various lastfm's top-K (minsup = 5)"
set ylabel "Patterns per frequent item"
plot 'measuresPerK-lastfm.dat' using 1:($4/200597)  title 'TopPI' ls 2


########### VARIOUS - webdocs ################################

set output "nbPatterns-webdocs.ps"
set title "Total patterns outputted for webdocs's top-K (minsup = 100)"
set ylabel "Outputted patterns"
plot 'measuresPerK-webdocs.dat' using 1:4  title 'TopPI' ls 2

set output "patternsLengths-webdocs.ps"
set title "Average patterns length for webdocs's top-K (minsup = 100)"
set ylabel "Average patterns length"
plot 'measuresPerK-webdocs.dat' using 1:5  title 'TopPI' ls 2

set output "nbPatternsDividedByK-webdocs.ps"
set title "Equivalent full top-K entries for webdocs's top-K (minsup = 100)"
set ylabel "Full top-K entries"
plot 'measuresPerK-webdocs.dat' using 1:($4/$1)  title 'TopPI' ls 2

set output "nbPatternsPerFreqItem-webdocs.ps"
set title "Patterns count per frequent item for various webdocs's top-K (minsup = 100)"
set ylabel "Patterns per frequent item"
plot 'measuresPerK-webdocs.dat' using 1:($4/84106)  title 'TopPI' ls 2


########### VARIOUS - accidents ################################

set output "patternsLengths-accidents.ps"
set title "Average patterns length for accidents's top-K (minsup = 2)"
set ylabel "Average patterns length"
plot 'measuresPerK-accidents-s2.dat' using 1:5  title 'TopPI' ls 2

set output "nbPatternsDividedByK-accidents.ps"
set title "Equivalent full top-K entries for accidents's top-K (minsup = 2)"
set ylabel "Full top-K entries"
plot 'measuresPerK-accidents-s2.dat' using 1:($4/$1)  title 'TopPI' ls 2
