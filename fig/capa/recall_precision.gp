load '../common.gp'

unset grid
set style data points

set key top right

set xlabel "recall" offset 0,0.5
set ylabel "confidence" offset 2,0

#set xrange [0.05:0.35]

set output "recall_precision.ps"
plot "recall_precision.data" index 0 using 3:5 pt 5 lw 3 lc rgb "dark-yellow" title "G_1",\
"" index 1 using 3:5 pt 2 lw 3 lc rgb "red" title "G_2",\
"" index 2 using 3:5 pt 6 lw 3 lc rgb "green" title "G_3",\
"" index 3 using 3:5 pt 3 lw 3 lc rgb "grey40" title "G_4",\
"" index 4 using 3:5 pt 4 lw 3 lc rgb "blue" title "G_5"
