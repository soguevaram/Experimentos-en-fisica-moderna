set term pdf
set output '2m-405nm.pdf'
set xlabel 'Voltaje [V]'
set ylabel 'Fotocorriente [pA]'
set title "Fotocorriente para 405nm"
set yrange [0:105]
set xrange [-2.6:-0.9]
plot '405nm.txt' using 1:2  w l t 'Longitud de onda 405 nm', 168*x+262 t 'y=168(x)+262 R^2=0.982'
