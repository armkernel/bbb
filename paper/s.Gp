set term jpeg size 600,600
set output "transaction1.jpeg"
set termoption enhanced

set title center  "Result of transaction in shadow mode" font "Times bold,20"
set key top right  horizontal width 3 font "sans,20"
set auto x
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set xtics ("1" 0, "1" 1, "2" 2) rotate by -5 scale 0 font "Times bold ,5" offset 0,-1
set ytics font "Times bold, 20" offset -1
set ylabel "Transaction/Sec" font "sans bold,20" offset -3
set xlabel "Transaction" font "sans bold,20" offset 0,-2
set boxwidth 0.7
set yrange[0:200]
#set xtic scale 0 font "Times,15"
plot newhistogram, 'table_transaction1' using ($2) title "Insert" lc rgb "black" fs pattern 1, '' u ($3) ti "Update" lc rgb "black" fs pattern 2, '' u ($4) ti "Delete" lc rgb "black"  fs pattern 3
