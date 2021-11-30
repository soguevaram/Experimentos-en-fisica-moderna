set term pdf
set output 'datos-experimentales.pdf'
set xlabel 'Voltaje [V]'
set ylabel 'Fotocorriente [pA]'
set title "Fotocorriente variando longitudes de onda"
set yrange [0:105]
set xrange [-2.6:0.1]
plot '405nm.txt' using 1:2  w l t 'Longitud de onda 405 nm', '436nm.txt' using 1:2  w l t 'Longitud de onda 436 nm', '546nm.txt' using 1:2  w l t 'Longitud de onda 546 nm', '578nm.txt' using 1:2  w l t 'Longitud de onda 578 nm'
