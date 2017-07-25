set term postscript eps enhanced color size 8cm,4.7cm
#set terminal postscript enhanced color 

set output "transaction.eps"
set title "One insert transaction using one table" font "Helvetica,20"
set key inside bottom right font "Helvetica,18" samplen 2
set ylabel "Sector number(10^7)" font "Helvetica,17" offset -0.5
set xlabel "Time (sec)" font "Helvetica,17"
set grid y
set xrange[8.114:8.121]
set yrange[0:]

plot "db" using 1:($4)/1000000 pt 1 ps 2  lw 2 t ".db","sqlJournal" using 1:($4)/1000000 pt 2 ps 2 lw 2 t ".db-journal" ,"ext4Journal" using 1:($4)/1000000 pt 3 ps 2 lw 2 t "ext4-jouranl"
