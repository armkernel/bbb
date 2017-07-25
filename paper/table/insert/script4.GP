set term postscript eps enhanced color size 10.5cm,4.7cm
#set terminal postscript enhanced color 

set lmargin 10
set rmargin 5
set bmargin 5

set output "insert1.eps"
#set title "One insert transaction using one table" font "Helvetica,20"
#set key off
set key outside left top font "Times,25" samplen 2
set ylabel "Sector number(10^7)" font "Times,26" offset -0.8
set xlabel "Time (sec)" font "Times,25" offset 0,-1

set ytics font ",22" 
set xtics font ",22" offset 0, -0.5
set grid
set xrange[0.811:0.8175]
set yrange[0:]

plot "tb1db" using 1:($4)/1000000 pt 1 ps 2.3  lw 2.3  t ".db","tb1journal" using 1:($4)/1000000 pt 2 ps 2.3 lw 2.3  t ".db-journal" ,"tb1ext4journal" using 1:($4)/1000000 pt 3 ps 2.3 lw 2.3  t "ext4-journal"


