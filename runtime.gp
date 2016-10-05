set xlabel 'N'
set ylabel 'Time(sec)'
set style fill solid
set title 'Compute_pi  Time  by clock_gettime() '
set term png enhanced font 'Verdana,10'
set output 'runtime.png'
set term pngcairo size 1280,960
set datafile separator ","

plot "result_clock_gettime.csv" using 1:2 title 'baseline' with lines lt rgb 'red' , \
 "result_clock_gettime.csv"	using 1:3 title 'euler' with lines lt rgb 'black' , \
     	  "result_clock_gettime.csv"	using 1:4 title 'openmp_2' with lines lt rgb 'blue' , \
          "result_clock_gettime.csv" using 1:5 title 'openmp_4' with lines lt rgb 'green' ,\
          "result_clock_gettime.csv" using 1:6 title 'AVX' with lines lt rgb 'orange' ,\
          "result_clock_gettime.csv" using 1:7 title 'AVX + loop untolling' with lines lt rgb 'brown' 
