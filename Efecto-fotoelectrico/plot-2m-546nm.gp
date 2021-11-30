set term pdf
set output '2m-546nm.pdf'
set xlabel 'Voltaje [V]'
set ylabel 'Fotocorriente [pA]'
set title "Fotocorriente para 546nm"
set yrange [0:105]
set xrange [-1:-0.2]
plot '546nm.txt' using 1:2  w l t 'Longitud de onda 546 nm', 275*x+164 t 'y=275(x)+164  R^2=0.962'
