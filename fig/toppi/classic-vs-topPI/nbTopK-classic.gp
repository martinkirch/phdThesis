load '../../common.gp'

set size 0.60,0.45

set style data linespoints

set xlabel 'Relative frequency threshold' offset 0,0.5
set ylabel 'Items having k CIS'  #offset 2,0

set key top right

#set yrange [100:*]
#set logscale y
set format y '%g %%'
set format x '%g %%'

set xrange[0.2:1]
set xtics 0.2
set ytics 2
set output 'nbTopK-classic-tickets2013-perClient.ps'
plot 'tickets2013-perClient-k1.dat' using ($1*100):($2/2222) ls 1 ps 0   title 'k=1'  ,\
	'tickets2013-perClient-k10.dat' using ($1*100):($2/2222) ls 2 ps 0   title 'k=10'  ,\
  'tickets2013-perClient-k50.dat' using ($1*100):($2/2222) ls 3 ps 0  title 'k=50'

set logscale x
set xtics auto
set ytics auto
set xrange[0.0001:0.01]
set output 'nbTopK-classic-tickets2013.ps'
plot 'tickets2013-k1.dat' using ($1*100):($2/2222) ls 1 ps 0   title 'k=1'  ,\
	'tickets2013-k10.dat' using ($1*100):($2/2222) ls 2 ps 0   title 'k=10'  ,\
  	'tickets2013-k50.dat' using ($1*100):($2/2222) ls 3 ps 0  title 'k=50'

set xrange[0.01:1]
set output 'nbTopK-classic-lastfm.ps'
plot 'lastfm.dat-k1.dat' using ($1*100):($2/12000) ls 1 ps 0   title 'k=1'  ,\
	'lastfm.dat-k10.dat' using ($1*100):($2/12000) ls 2 ps 0   title 'k=10'  ,\
  	'lastfm.dat-k50.dat' using ($1*100):($2/12000) ls 3 ps 0  title 'k=50'
