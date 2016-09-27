load '../common.gp'


#3 per line so change size
set size 0.45,0.35

set xlabel "#Threads" offset 0,0.5

set key right top
set ylabel "Time (x100 seconds)" offset 2,0
set output "allclosed-runtimePerThreads-accidents.ps"
plot 'runtimePerThreads-accidents.dat' using 1:($2/100) title 'TopLCM' ls 2, \
	'runtimePerThreads-accidents.dat' using 1:($4/100) title 'PLCM' ls 3

set key left top
set ylabel "Speedup" offset 2,0
set output "allclosed-speedupPerThreads-accidents.ps"
plot [0:32] x title 'ideal' ls 1 , \
	'runtimePerThreads-accidents.dat' using 1:3 title 'TopLCM' ls 2, \
	'runtimePerThreads-accidents.dat' using 1:5 title 'PLCM' ls 3



set key right top
set ylabel "Time (x100 seconds)" offset 2,0
set output "allclosed-runtimePerThreads-webdocs.ps"
plot 'runtimePerThreads-webdocs.dat' using 1:($2/100) title 'TopLCM' ls 2, \
	'runtimePerThreads-webdocs.dat' using 1:($4/100) title 'PLCM' ls 3

set key left top
set ylabel "Speedup" offset 2,0
set output "allclosed-speedupPerThreads-webdocs.ps"
plot [0:32] x title 'ideal' ls 1 , \
	'runtimePerThreads-webdocs.dat' using 1:3 title 'TopLCM' ls 2, \
	'runtimePerThreads-webdocs.dat' using 1:5 title 'PLCM' ls 3



set key left top
set ylabel "Speedup" offset 2,0
set output "allclosed-speedupPerThreads-lastfm.ps"
plot [0:32] x title 'ideal' ls 1 , \
	'runtimePerThreads-lastfm.dat' using 1:3 title 'TopLCM' ls 2, \
	'runtimePerThreads-lastfm.dat' using 1:5 title 'PLCM' ls 3

