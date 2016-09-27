load '../../common.gp'

#set size 0.60,0.45

set key bottom right
set xlabel "#Machines" offset 0,0.5
set ylabel "Temps (heures)" offset -1,0
set xtics 16
set yrange [0:*]

########### TOK SPEEDUP ####################################

set output "supermarket-s2-k1000-t8-cumulatedMiningTime.ps"

plot [0:48] 'supermarket-s2-k1000-t8-cumulatedMiningCPUTime.dat' using 1:($2/3600) title 'TopPI' ls 1
