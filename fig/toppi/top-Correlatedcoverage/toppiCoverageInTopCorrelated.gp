load '../../common.gp'

set size 0.60,0.45

set xlabel "k" offset 0,0.5
set ylabel "coverage " offset 1,0
set format y '%g %%'

set xtics 100

set yrange [0:100]
set key bottom right

set output "tickets2013.ps"
plot 'tickets2013-TopPIcoverageVStop10correlated-noClosure.dat' using 1:($4*100)  title 'n = 10' ls 2 ,\
	'tickets2013-TopPIcoverageVStop50correlated-noClosure.dat' using 1:($4*100)  title 'n = 50' ls 3 ,\
	'tickets2013-TopPIcoverageVStop100correlated-noClosure.dat' using 1:($4*100)  title 'n = 100' ls 4

set output "lastfm.ps"
plot 'lastfm-TopPIcoverageVStop10correlated.dat' using 1:($4*100)  title 'n = 10' ls 2 ,\
	'lastfm-TopPIcoverageVStop50correlated.dat' using 1:($4*100)  title 'n = 50' ls 3 ,\
	'lastfm-TopPIcoverageVStop100correlated.dat' using 1:($4*100)  title 'n = 100' ls 4


exit



set output "lastfm-TopPIandPFPcoverageVStopCorrelated.ps"
plot 'lastfm-TopPIcoverageVStop10correlated.dat' using 1:($4*100)  title 'n = 10' ls 2 ,\
	'lastfm-TopPIcoverageVStop50correlated.dat' using 1:($4*100)  title 'n = 50' ls 3 ,\
	'lastfm-TopPIcoverageVStop100correlated.dat' using 1:($4*100)  title 'n = 100' ls 4 ,\
	'lastfm-PFPcoverageVStop10correlated.dat' using 1:($4*100) title 'PFP on n = 10' ls 5
