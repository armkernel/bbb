set term postscript eps enhanced color size 10.5cm,4.7cm
#set terminal postscript enhanced color 
set lmargin 12
set bmargin 5

set output "40.eps"
#set title "One insert transaction using one table" font "Helvetica,20"
#set key off
set key horiz outside top right font "Helvetica,26" samplen 2
set ylabel "Sector number(10^7)" font "Times,25" offset -0.5
set xlabel "Time (sec)" font "Times,25"

set ytics font ",23"
set xtics font ",22"
set grid
set xrange[2.6:]
set yrange[20:26]

plot "40db" using 1:($4)/1000000 pt 1 ps 2.3  lw 2.3 t ".db"

