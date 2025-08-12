reset
set terminal postscript eps enhanced color dashlength 2 linewidth 2 font "LiberationSerif, 16"
set output 'grph-ex-gnuplot.eps'
set encoding utf8
set key at screen 1, 0.975 right top vertical Right noreverse enhanced autotitle nobox
set style textbox opaque margins 0.5, 0.5 fc bgnd noborder linewidth 1.0
set view 60, 30, 1, 1.1
set samples 20, 20
set isosamples 21, 21
set contour both
set cntrlabel format '%8.3g' font 'LiberationSerif, 10' start 5 interval 20
set hidden3d back offset 1 trianglepattern 3 undefined 1 altdiagonal bentover
set cntrparam levels 10
set style data lines
#set title "contours on both base and surface"
set xlabel "{/LiberationSerif-Italic x@^{}_{}}
set xtics border nomirror out scale 2, 1
set xrange [ * : * ] noreverse writeback
set x2range [ * : * ] noreverse writeback
set ylabel "{/LiberationSerif-Italic y@^{}_{}}"
set ytics border nomirror out scale 2, 1
set yrange [ * : * ] noreverse writeback
set y2range [ * : * ] noreverse writeback
set zlabel "{/LiberationSerif-Italic z@^{}_{}}"
set ztics border nomirror out scale 2, 1
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
set colorbox vertical origin screen 0.9, 0.2 size screen 0.05, 0.6 front noinvert bdefault
NO_ANIMATION = 1
splot x**2-y**2 with lines title "{/LiberationSerif-Italic x@^{2}_{} - y@^{2}_{}}", x**2-y**2 with labels boxed notitle
