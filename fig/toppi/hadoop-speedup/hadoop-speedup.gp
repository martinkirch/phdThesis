load '../../common.gp'

#set size 0.60,0.45

set key left top

unset grid
set xlabel "#Machines" offset 0,0.5
unset ytics
set y2label "Speedup" offset -1,0
set y2tics 16
set xtics 16

########### TOK SPEEDUP ####################################


set output "supermarket-s2-k1000-t8.ps"
plot [0:48] x title 'Linear' ls 1 ,\
	'supermarket-s2-k1000-t8.dat' using 1:(36212/$2) title 'TopPI' ls 2


exit





set output "hadoopSpeedup-webdocs-s10-k10-t8-global.ps"
plot [0:64] x title 'Linear' ls 1 axes x1y2,\
	'webdocs-s10-k10-t8-runtimePerNbWorkers.dat' using 1:(24079/$2) title 'TopPI' ls 2 axes x1y2


set output "hadoopSpeedup-webdocs-s40-k10-t8-global.ps"
plot [0:64] x title 'Linear' ls 1 axes x1y2,\
	'webdocs-s40-k10-t8-speedup1-64.dat' using 1:5 title 'TopPI' ls 2 axes x1y2

set output "hadoopSpeedup-webdocs-s40-k10-t8-jobs1n2.ps"
plot [0:64] x title 'Linear' ls 1 ,\
	'webdocs-s40-k10-t8-speedup1-64.dat' using 1:6 title 'TopPI' ls 2

set output "hadoopSpeedup-webdocs-s40-k10-t8-miningTime.ps"
plot [0:64] x title 'Linear' ls 1 ,\
	'webdocs-s40-k10-t8-speedup1-64.dat' using 1:7 title 'TopPI' ls 2
