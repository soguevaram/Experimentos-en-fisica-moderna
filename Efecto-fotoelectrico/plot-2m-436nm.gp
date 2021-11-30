set term pdf
set output '2m-436nm.pdf'
set xlabel 'Voltaje [V]'
set ylabel 'Fotocorriente [pA]'
set title "Fotocorriente para 436nm"
set yrange [0:105]
set xrange [-1.8:-0.5]
plot '436nm.txt' using 1:2  w l t 'Longitud de onda 436 nm', 166*x+189 t 'y= 166(x)+189  R^2=0.969'
