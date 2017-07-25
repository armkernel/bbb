set term eps size 13cm,13cm
set output "transaction.eps"
set termoption enhanced

#set title center  "5 Operations in a Transaction." font "Times bold,15"
set key top right  horizontal width 3 font "sans,20"
set auto x
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set xtics ("1" 0, "2" 1, "3" 2) rotate by -5 scale 0 font "Times bold ,20" offset 0,-1
set ytics font "Times bold, 20" offset -1
set ylabel "Transaction/Sec" font "sans bold,20" offset -3
set xlabel "Number of Tables" font "sans bold,20" offset 0,-2
set boxwidth 0.7
set yrange[0:200]
#set xtic scale 0 font "Times,15"
plot newhistogram, 'table_transaction' using ($2) title "Insert" lc rgb "black" fs pattern 1, '' u ($3) ti "Update" lc rgb "black" fs pattern 2, '' u ($4) ti "Delete" lc rgb "black"  fs pattern 3
