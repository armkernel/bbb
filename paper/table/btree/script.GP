set term postscript eps enhanced color size 10cm,8.7cm
#set terminal postscript enhanced color 

set output "out.eps"
set lmargin 12
set bmargin 4
#set title "One insert transaction using one table" font "Helvetica,20"
#set key off
set key horiz outside top right font "Helvetica,24" samplen 2 width 3
set ylabel "Sector number(10^7)" font "Helvetica,25" offset -0.5
set xlabel "Time (sec)" font "Helvetica,25"

set ytics font ",22" 
set xtics font ",22"
set grid
#set xrange[0.811:0.818]
set yrange[23.47:24.2]


plot "outdb" using 1:($4)/1000000 pt 1 ps 2.3  lw 2.3  t ".db","outjournal" using 1:($4)/1000000 pt 2 ps 2.3 lw 2.3   t ".db-journal"

