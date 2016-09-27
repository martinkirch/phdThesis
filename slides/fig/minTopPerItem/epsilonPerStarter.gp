load '../common.gp'

set ylabel "Final value of min(top(i))"
set xlabel "Item index i"
set style data linespoints
set logscale x
set logscale y

set xrange[1:*]
set yrange[2:*]

set key top right

set output 'lastfm-s2-k50-minTopPerItem.ps'
plot "lastfm-s2-k50-w50-t32-naive.epsilonPerStarter.filtered2" using ($1+1):2 ls 1 title 'LastFM, k=50'
