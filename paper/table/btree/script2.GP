set term postscript eps enhanced color size 9.5cm,8.7cm
#set terminal postscript enhanced color 
set lmargin 12
set bmargin 4
set output "priout.eps"
#set title "One insert transaction using one table" font "Helvetica,20"
#set key off
set key horiz outside top right font "Helvetica,23" samplen 2 width3
set ylabel "Sector number(10^7)" font "Helvetica,22" offset -0.5
set xlabel "Time (sec)" font "Helvetica,22"

set ytics font ",21"
set xtics font ",21"
set grid
#set xrange[0.811:0.818]
set yrange[23.47:24.41]


plot "prioutdb" using 1:($4)/1000000 pt 1 ps 2.3  lw 2.3 t ".db","prioutjournal" using 1:($4)/1000000 pt 2 ps 2.3 lw 2.3 t ".db-journal"
