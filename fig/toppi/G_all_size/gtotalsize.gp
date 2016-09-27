load '../../common.gp'

set key top left

#set format y "%.0f %%"
set logscale x
set logscale y
set xlabel "Number of groups"
set ylabel "Total relative size of sub-datasets"
#set ytics 20

set output "relativeSize-total.ps"
plot 'webdocs.wcTotalPerNbGroups' using 1:3 title 'WebDocs' ls 1 lw 2 ps 0 ,\
  'tickets2013-perClient.wcTotalPerNbGroups' using 1:3 title 'prod\_assoc\_client' ls 4 lw 2 ps 0 ,\
  'lastfm.wcTotalPerNbGroups' using 1:3 title 'LastFM' ls 2 lw 2 ps 0 ,\
  'tickets2013.wcTotalPerNbGroups' using 1:3 title 'prod\_assoc\_receipt' ls 3 lw 2 ps 0
#'DATALYSE_20140703.wcTotalPerNbGroups' using 1:3 title 'Supermarket' ls 3 lw 2 ps 0 ,\
