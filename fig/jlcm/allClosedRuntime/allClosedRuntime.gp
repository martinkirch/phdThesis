load '../../common.gp'

set terminal postscript eps color enhanced 18
set size 0.60,0.45

set key right top

set xlabel "Absolute min. freq. threshold {/Symbol e}" #offset 0,0.5
set ylabel "Wall clock time (s)" offset 1,0

set ytics 400
set output "runtimePerSupport-lastfm.ps"
plot 'runtimePerSupport-lastfm.dat' using ($1):($2)  title 'jLCM' ls 1, \
	'runtimePerSupport-lastfm.dat' using ($1):($3)  title 'PLCM' ls 2

set ytics 1000
set xtics 30000
set output "runtimePerSupport-webdocs.ps"
plot 'runtimePerSupport-webdocs.dat' using ($1):($2)  title 'jLCM' ls 1, \
	'runtimePerSupport-webdocs.dat' using ($1):($3)  title 'PLCM' ls 2


exit

set xtics 10000
set output "allclosed-runtimePerSupport-accidents.ps"
plot 'runtimePerSupport-accidents.dat' using ($1):($2)  title 'jLCM (32 threads)' ls 1, \
	'runtimePerSupport-accidents.dat' using ($1):($3)  title 'PLCM (32 threads)' ls 2
