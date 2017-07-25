set term postscript eps enhanced color size 9.5cm,5.7cm
#set terminal postscript enhanced color 

set output "insert1.eps"
#set title "One insert transaction using one table" font "Helvetica,20"
#set key off
set key outside horiz top left font "Helvetica,25" samplen 2 
set ylabel "Sector number(10^7)" font "Helvetica,25" offset -0.5
set xlabel "Time (sec)" font "Helvetica,25"

set ytics font ",22"
set xtics font ",22"
set grid
set xrange[0.811:0.818]
set yrange[0:]

plot "tb1db" using 1:($4)/1000000 pt 1 ps 2.3  lw 2.3 t ".db","tb1journal" using 1:($4)/1000000 pt 2 ps 2.3 lw 2.3 t ".db-journal" ,"tb1ext4journal" using 1:($4)/1000000 pt 3 ps 2.3 lw 2.3 t "ext4-jouranl"


