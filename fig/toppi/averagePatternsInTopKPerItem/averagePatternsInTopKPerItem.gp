load '../../common.gp'

set size 0.60,0.45

set key right bottom

param(x)=50
param10(x)=10
unset grid

set format x "10^{%L}"
set logscale x
set xlabel "support(i)" #offset 0,0.5

set ylabel "#itemsets in top(i)" offset 1,0
set yrange [0:60]

set output "lastfm-s2-k50.ps"
plot [1:1000000] param(x) title 'k' ls 1 ,\
	'ultraAveragePatternsInTopKPerItem-lastfm-s2-k50-toplcm.dat' using 1:2 title 'TopPI' ls 2 ,\
	'ultraAveragePatternsInTopKPerItem-lastfm-s2-k50-pfp-all.dat' using 1:2 title 'PFP' ls 3
#	'ultraAveragePatternsInTopKPerItem-lastfm-s2-k50-pfp-closed.dat' using 1:2 title 'PFP closed' ls 5

set output "supermarket-s2-k50.ps"
plot [1:1200000] param(x) title 'k' ls 1 ,\
	'ultraAveragePatternsInTopKPerItem-supermarket-s2-k50-toplcm.dat'  using 1:2 title 'TopPI' ls 2,\
	'ultraAveragePatternsInTopKPerItem-supermarket-s2-k50-pfp-all.dat' using 1:2 title 'PFP' ls 3



exit



set output "averagePatternsInTopKPerItem-accidents-s2-k50.ps"
plot [1:1000000] param(x) title 'k' ls 1 ,\
	'ultraAveragePatternsInTopKPerItem-accidents-s2-k50-toplcm.dat' using 1:2 title 'TopPI' ls 2,\
	'ultraAveragePatternsInTopKPerItem-accidents-s2-k50-pfp-all.dat' using 1:2 title 'PFP' ls 3 ,\
	'ultraAveragePatternsInTopKPerItem-accidents-s2-k50-pfp-closed.dat' using 1:2 title 'PFP filtered' ls 5

set yrange [0:12]
set output "averagePatternsInTopKPerItem-webdocs-s100-k10.ps"
plot [100:1000000] param10(x) title 'k' ls 1 ,\
	'ultraAveragePatternsInTopKPerItem-webdocs-s100-k10-toplcm.dat' using 1:2 title 'TopPI' ls 2
