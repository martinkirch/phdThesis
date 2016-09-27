load '../../common.gp'

set size 0.60,0.45

set style data linespoints

set ylabel 'Mining time (s)'  offset 2,0

set yrange [0:*]
set xrange [10:*]
set logscale x

set xlabel 'k' #offset 0,0.5

set key top left invert

set ytics 200
set output 'lastfm-s2-t16-timePerK.ps'
plot 'lastfm.dat-s2-t16-toppi-timePerK.dat' using 1:($2/1000) ls 1 title 'TopPI' ,\
	'lastfm.dat-s2-t16-naive-timePerK.dat' using 1:($2/1000) ls 2 title 'baseline'

set ytics auto

set output 'tickets2013-s2-t16-timePerK.ps'
plot 'tickets2013-s2-t16-toppi-TimePerK.dat'  using 1:($2/1000) ls 1 title 'TopPI' ,\
	'tickets2013-s2-t16-naive-TimePerK.dat' using 1:($2/1000) ls 2 title 'baseline'

set ytics 1
set ylabel 'Mining time (hours)'  offset 2,0
set xrange [10:500]
set output 'tickets2013-perClient-s2-t16-timePerK.ps'
plot 'tickets2013-perClient-s2-t16-toppi-TimePerK.dat'  using 1:($2/3600000) ls 1 title 'TopPI' ,\
	'tickets2013-perClient-s2-t16-naive-TimePerK.dat' using 1:($2/3600000) ls 2 title 'baseline'







exit



set xrange [10:100]
set ytics 200
set output 'webdocs-s150-t32-timePerK.ps'
plot 'webdocs-s150-t32-timePerK.dat' using 1:($2/1000) ls 1 title 'TopPI' ,\
	'webdocs-s150-t32-naive-timePerK.dat' using 1:($2/1000) ls 2 title 'baseline'



set xlabel '{/Symbol e}' offset 0,0.5
set key top right

set ytics 50
set xrange [1:*]

set output 'baseline-lastfm-k50-32-timePerE.ps'
plot 'lastfm-k50-t32-timePerE.dat' using 1:($2/1000) ls 1 title 'TopPI' ,\
	'lastfm-k50-t32-naive-timePerE.dat' using 1:($2/1000) ls 2 title 'baseline'

set ytics 50
set xrange [1:*]
set output 'baseline-retail-k50-t32-timePerE.ps'
plot 'datalyseTickets-k50-t32-timePerE.dat' using 1:($2/1000) ls 1 title 'TopPI' ,\
	'datalyseTickets-k50-t32-naive-timePerE.dat' using 1:($2/1000) ls 2 title 'baseline'

unset key
set ytics 200
set xrange [100:*]
set output 'baseline-webdocs-k50-t32-timePerE.ps'
plot 'webdocs-k50-t32-timeAndPatternsTraversedPerK.dat' using 1:($2/1000) ls 1 title 'TopPI' ,\
	'webdocs-k50-t32-naive-timeAndPatternsTraversedPerK.dat' using 1:($2/1000) ls 2 title 'baseline'
