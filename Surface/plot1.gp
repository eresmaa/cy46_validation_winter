set terminal png
set output "fc_00000000_00000000_Sweden_ALL_VI_0_thresholds.1.png"
set datafile missing "-99"
set title "Frequency  for Visibility (m)\n   Selection: Sweden    158 stations\n  Period: 20230101-20230131\n  Used {00,06,12,18} + 03 06 ... 48" 

set style line 1 lt 0 lw 1 pt 5 # use black thin lines
set style line 2 lt 8 lw 1 pt 1 # use black thicker lines
set grid
set xlabel "thresholds m"
set ylabel "Frequency"
set logscale x
 
 set arrow  1 from  1000.0000000000000,graph 0.05 to  1000.0000000000000,graph 0.01 lt -1 lw 2 
 set arrow  2 from  5000.0000000000000,graph 0.05 to  5000.0000000000000,graph 0.01 lt -1 lw 2 
 set arrow  3 from  10000.000000000000,graph 0.05 to  10000.000000000000,graph 0.01 lt -1 lw 2 
 set arrow  4 from  20000.000000000000,graph 0.05 to  20000.000000000000,graph 0.01 lt -1 lw 2
 plot 'c_00000000_00000000_Sweden_ALL_VI_0_43h22_ref_winter.scores2' using 2:13 title 'OBS' with linespoints lt 4 lw 2 pt 7,'c_00000000_00000000_Sweden_ALL_VI_0_43h22_ref_winter.scores2' using 2:14 title '43h22_ref_winter' with linespoints lt 1 lw 2 pt 7,'c_00000000_00000000_Sweden_ALL_VI_0_val_46h1_rc1_v1.scores2' using 2:14 title 'val_46h1_rc1_v1' with linespoints lt 2 lw 2 pt 7,'c_00000000_00000000_Sweden_ALL_VI_0_val_46h1_rc1_v2.scores2' using 2:14 title 'val_46h1_rc1_v2' with linespoints lt 3 lw 2 pt 7