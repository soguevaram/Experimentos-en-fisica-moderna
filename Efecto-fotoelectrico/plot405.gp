set term pdf
set output 'fig405.pdf'
set xlabel 'Voltaje [V]'
set ylabel 'Fotocorriente [pA]'
set title "Fotocorriente para 405 nm"
set yrange [0:105]
set xrange [-2.25:4]
set arrow from 2, graph 0 to 2, graph 1 nohead
plot '405nm.txt' using 1:2  w l t 'Longitud de onda 405 nm'
