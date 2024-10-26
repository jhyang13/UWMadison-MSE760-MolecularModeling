set size 6, 3
set terminal pngcairo enhanced font "Arial, 32.0" size 1600, 1200
set multiplot
set nokey

vbm = 6.1981
cbm = 6.7822

set origin 0, 0
set size 0.75, 1

stats "bands.dat.gnu" using 1 nooutput
set xtics ("L" 0, "{/Symbol G}" 0.8660, "X" 1.9660, "W" 2.3660, "X" 2.8660, "{/Symbol G}" 4.2802)
set arrow 1 from 0,vbm to STATS_max,vbm  nohead dt '.'
set arrow 2 from 0,cbm to STATS_max,cbm  nohead dt '.'
set ylabel "Eigenvalues"
set xrange [STATS_min:STATS_max]
stats "bands.dat.gnu" using 2 nooutput
set title "Band"
set yrange [-6:10]

plot "bands.dat.gnu" with lines linetype rgb "black" linewidth 3 

set origin 0.75, 0
set size 0.25, 1
set title "DOS"
set ylabel ""
set yrange [-6:10]
unset xtics
unset ytics
set bmargin 2
set ytics format " "

plot "dos.dat" u 2:1 with lines linetype rgb "black" linewidth 3

unset multiplot
