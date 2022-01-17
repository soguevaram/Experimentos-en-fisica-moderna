set term pdf
set output '01.pdf'
set xlabel 'Voltaje [V]'
set ylabel 'Corriente '
set title "Fotocorriente para 546nm"
set format x "%.6f"
set format y "%.6f"
set yrange [0:3]
set xrange [0:30]
plot '02.txt' using 1:2  w l t 'Longitud de onda 546 nm'
