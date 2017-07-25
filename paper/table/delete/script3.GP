set term postscript eps enhanced color size 9.5cm,4.7cm
#set terminal postscript enhanced color 

set output "delete3.eps"
#set title "One insert transaction using one table" font "Helvetica,20"
set key off
#set key inside bottom right font "Helvetica,18" samplen 2
set ylabel "Sector number(10^7)" font "Helvetica,19" offset -0.5
set xlabel "Time (sec)" font "Helvetica,19"

set ytics font ",18"
set xtics font ",18"
set grid
set xrange[0.737:0.746]
set yrange[0:]

plot "tb3db" using 1:($4)/1000000 pt 67 ps 2.3  lw 2.3 t ".db","tb3journal" using 1:($4)/1000000 pt 68 ps 2.3 lw 2.3 t ".db-journal" ,"tb3ext4journal" using 1:($4)/1000000 pt 74 ps 2.3 lw 2.3 t "ext4-jouranl"


