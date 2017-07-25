set term postscript eps enhanced color size 9.5cm,4.7cm
#set terminal postscript enhanced color 

set output "40x.eps"
#set title "One insert transaction using one table" font "Helvetica,20"
#set key off
set key horiz outside top right font "Helvetica,20" samplen 2
set ylabel "Sector number(10^7)" font "Helvetica,19" offset -0.5
set xlabel "Time (sec)" font "Helvetica,19"

set ytics font ",18"
set xtics font ",18"
set grid
set xrange[0.13:]
set yrange[20:26]

plot "40xdb" using 1:($4)/1000000 pt 1 ps 2.3  lw 2.3 t ".db"

