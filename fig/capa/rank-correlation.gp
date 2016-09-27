load '../common.gp'

set key bottom left

set xlabel "Rank for Cosine (G_3)" offset 0,0.5
set ylabel "Average rank difference" offset 1,-1

set logscale x
set xrange [1:500]
set yrange [-100:100]
set output "rank-correlation.ps"
plot 'COSINE-SPECIFICITY.correlation' using ($1+1):($2-$1) smooth csplines with lines title 'Specificity (G_4)' ls 1 lw 2 lc rgb "red" ,\
	'COSINE-GINI.correlation' using ($1+1):($2-$1) smooth csplines with lines title 'Gini (G_3)' ls 2 lw 1 lc rgb "blue"
#	x title 'Cosine (G_4)' ls 1 lc rgb "black"
