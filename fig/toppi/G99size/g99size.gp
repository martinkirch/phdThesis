load '../../common.gp'

set key left bottom

set format y "%.0f %%"
set logscale x
set xlabel "Number of groups"
set ylabel "Relative size of the last sub-dataset"
set ytics 20

set output "relativeSize-last.ps"
plot 'webdocs.wcInLastGperNbGroups' using 1:($3*100) title 'WebDocs' ls 1 lw 2 ps 0 ,\
  'lastfm.wcInLastGperNbGroups' using 1:($3*100) title 'LastFM' ls 2 lw 2 ps 0 ,\
  'tickets2013-perClient.wcInLastGperNbGroups' using 1:($3*100) title 'prod\_assoc\_client' ls 4 lw 2 ps 0 ,\
  'tickets2013.wcInLastGperNbGroups' using 1:($3*100) title 'prod\_assoc\_receipt' ls 5 lw 2 ps 0,\
  'DATALYSE_20140703.wcInLastGperNbGroups' using 1:($3*100) title 'Supermarket' ls 3 lw 2 ps 0
