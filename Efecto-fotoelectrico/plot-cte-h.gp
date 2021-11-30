set term pdf
set output 'cte-h.pdf'
set xlabel 'Frecuencia [THz]'
set ylabel 'Voltaje de frenado [V]'
set xzeroaxis
set title "Voltaje de frenado de acuerdo a la frecuencia"
set yrange [-0.1:3]
set xrange [0:800]

#line styles
set style line 1 lt 1 lw 2

#define lines
f1(x)=A1*x+B1; A1=0.005;B1=-2

#fitting lines
fit f1(x) 'cte-h.txt' via A1,B1 

#plotting
plot	"cte-h.txt" w p ls 6 notitle, f1(x) ls 1 t sprintf('f(V)=%.5fV+%.5f',A1,B1)