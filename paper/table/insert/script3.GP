set term postscript eps enhanced color size 10.5cm,4.7cm
#set terminal postscript enhanced color 

set lmargin 10
set rmargin 5
set bmargin 5

set output "insert3.eps"
#set title "One insert transaction using one table" font "Helvetica,20"
set key off
#set key inside bottom right font "Helvetica,18" samplen 2
set ylabel "Sector number(10^7)" font "Times,26" offset -0.8
set xlabel "Time (sec)" font "Times,25" offset 0,-1

set ytics font ",22" 
set xtics font ",22" offset 0, -0.5
set grid
set xrange[0.81:0.818]
set yrange[0:]

plot "tb3db" using 1:($4)/1000000 pt 1 ps 2.3  lw 2.3 t ".db","tb3journal" using 1:($4)/1000000 pt 2 ps 2.3 lw 2.3 t ".db-journal" ,"tb3ext4journal" using 1:($4)/1000000 pt 3 ps 2.3 lw 2.3 t "ext4-jouranl"


