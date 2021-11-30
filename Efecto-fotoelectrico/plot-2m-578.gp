set term pdf
set output '2m-578nm.pdf'
set xlabel 'Voltaje [V]'
set ylabel 'Fotocorriente [pA]'
set title "Fotocorriente para 578nm"
set yrange [0:105]
set xrange [-0.8:0.1]
plot '578nm.txt' using 1:2  w l t 'Longitud de onda 578 nm', 206*x+87.2 t 'y=206(x)+87.2  R^2=0.982'
