set term pdf
set output '3er-metodo.pdf'
unset logscale
set xlabel 'Voltaje [V]'
set ylabel 'Fotocorriente [pA]'
set yzeroaxis
set xzeroaxis
set title "Fotocorriente con el 3er método"
set yrange [-4:100]
set xrange [-3.6:.04]

#line styles
set style line 1 lt 1 lw 2
set style line 2 lt 2 lw 2
set style line 3 lt 3 lw 2
set style line 4 lt 4 lw 2

#define lines
f1(x)=A1*(exp(B1*(x-C1))-1); A1=10; B1=7; C1=-1.8
f2(x)=A2*(exp(B2*(x-C2))-1); A2=10; B2=7; C2=-1.5
f3(x)=A3*(exp(B3*(x-C3))-1); A3=10; B3=7; C3=-1.2
f4(x)=A4*(exp(B4*(x-C4))-1); A4=10; B4=7; C4=-0.95

#fitting lines
fit f1(x) '405nm.txt' via A1,B1,C1
fit f2(x) '436nm.txt' via A2,B2,C2
fit f3(x) '546nm.txt' via A3,B3,C3
fit f4(x) '578nm.txt' via A4,B4,C4

#vertical lines
set arrow from C1,-2 to C1,100 nohead lt 1 dt 2
set arrow from C2,-2 to C2,100 nohead lt 2 dt 2
set arrow from C3,-2 to C3,100 nohead lt 3 dt 2
set arrow from C4,-2 to C4,100 nohead lt 4 dt 2

#plotting
plot	"405nm.txt" w l ls 6 notitle, f1(x) ls 1 t sprintf('I(V)=%.3f(exp(%.3f(V%.3f))-1)',A1,B1,C1), \
	"436nm.txt" w l ls 6 notitle, f2(x) ls 2 t sprintf('I(V)=%.3f(exp(%.3f(V%.3f))-1)',A2,B2,C2), \
	"546nm.txt" w l ls 6 notitle, f3(x) ls 3 t sprintf('I(V)=%.3f(exp(%.3f(V%.3f))-1)',A3,B3,C3), \
	"578nm.txt" w l ls 6 notitle, f4(x) ls 4 t sprintf('I(V)=%.3f(exp(%.3f(V%.3f))-1)',A4,B4,C4