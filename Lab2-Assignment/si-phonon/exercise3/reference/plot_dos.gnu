#set encoding iso_8859_15
set terminal post eps enhanced solid color "Helvetica" 20
set output "gnuplot_dos.eps"
#
set key off

set xrange [0:600]
set ylabel "VDOS"
set xlabel "{/Symbol w} (cm^{-1})"

plot "si.dos" u 1:2 w l lw 2
