set term jpeg size 600,600
set output "shadow_transaction.jpeg"
set termoption enhanced
#lmargin 12
set title center "Result of Transaction in Shadow mode" font "Time bold,18"

set key off
#set key top right horiz width 2
#set auto x
set style data histogram
set style  histogram cluster gap 1
set style fill pattern 1 border -1
set ylabel "Throughput (transaction/sec)" font "Times ,18"
set xlabel "Transcation" center font "Times,18"
set yrange[0:320]
#set xrange[-1:2]
#set xrange[0:]
set xtics ("Insert" 0, "Update" 1,"Delete" 2) 
set xtics font "Times ,16"
#set xtics autofreq 1
#unset xtics
set grid y

set bars 1
set boxwidth 0.7 absolute

plot newhistogram, 'info' using ($2) lc rgb "black" 
