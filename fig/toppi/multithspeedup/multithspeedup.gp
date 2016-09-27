load '../../common.gp'


#set size 0.60,0.45

set key left Left top reverse # spacing .8 font ",9"

set y2label "Speedup" #offset -1,0
set xlabel "#Threads" #offset 0,0.5

unset grid
unset ytics
set y2tics 4
set xtics 8

set output "all-mining.ps"
plot [0:31] 'tickets2013-s2-k50-speedup-1-31.dat' using 1:3 title 'prod\_assoc\_receipt' ls 3 ,\
	'tickets2013-perClient-s2-k50-speedup-1-31.dat' using 1:3 title 'prod\_assoc\_client' ls 4 ,\
	'lastfm-s2-k50-speedup-1-31.dat' using 1:3 title 'LastFM' ls 2,\
	 x title 'Linear' ls 1
