
set size 1.0, 0.6
set terminal postscript portrait enhanced "Helvetica" 14
set out "benchmark-new.ulakbim/virginia-tech.speedup.ps"

set title "Speedup of virginia-tech"
set xlabel "Processors"
set ylabel "Parallel Speedup"
set key autotitle columnheader
#set datafile missing '-'

set auto x

set yrange [0:]

set key left top
set key box lw 0.25

set style data histogram
set style histogram cluster gap 1
set style fill pattern 1 border -1
set boxwidth 0.5
set bmargin 5
    
plot 'benchmark-new.ulakbim/virginia-tech.speedup' using 2:xtic(1) , '' u 3:xtic(1) 