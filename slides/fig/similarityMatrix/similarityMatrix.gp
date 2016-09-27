set terminal postscript eps enhanced 20
set palette grey
set size 0.7,0.70

unset grid
unset key
unset tics
unset colorbox
#set format x "10^{%L}"
#%set logscale x
#set xlabel "Item occurrences count" #offset 0,0.5
#set ylabel "Cumulated frequency" #offset 2,0

#set yrange [0:1.1]

set output "similarity-Kendal.ps"
plot 'patterns_demo-global-KENDAL.mat' matrix with image;

set output "similarity-NDCG.ps"
plot 'patterns_demo-global-NDCG.mat' matrix with image;

set output "similarity-O20.ps"
plot 'patterns_demo-global-OVERLAP_AT_20.mat' matrix with image;

set output "similarity-Spearman.ps"
plot 'patterns_demo-global-SPEARMAN.mat' matrix with image;
