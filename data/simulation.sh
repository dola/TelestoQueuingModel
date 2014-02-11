#workers+db.dat "Varying Worker Threads and Database Connection Count" "Number of worker threads and database #connections" plots/db+worker.png
#clients.dat "Varying Client Count" "Number of clients" plots/client.png
#delay.dat "Varying Client Retry Delay" "Client retry delay" plots/client-delay.png


gnuplot << EOF

set   autoscale
unset log
unset label
set offset graph 0, graph 0.1, graph 00, graph 0
set xtic auto
set ytic auto
set y2tic auto
set xtics nomirror
set ytics nomirror
set title "Varying Worker Threads and Database Connection Count"
set xlabel "Number of worker threads and database connections"
set ylabel "Throughput (per second)"
set y2label "Response time (ms)"
set xrange [0:*]
set yrange [0:3500]
set y2range [0:]
set style fill transparent solid 0.05 noborder
set term png truecolor font "Arial.ttf" 16 dashlength 1 size 1024,768
set output "plots/db+worker.png"
plot  "workers+db.dat" using ($1):($6/1000000) title 'Measured Response time' with linespoints axes x1y2 ls 4 lc rgb "#006400" , \
      \
      "workers+db.dat" using ($1):($9/1000000) title 'Simulated Response time' with linespoints axes x1y2 ls 5 lc rgb "green" , \
      \
      "workers+db.dat" using ($1):($2) title 'Measurement Packet Throughput' with linespoints ls 4 lc rgb "blue", \
      \
      "workers+db.dat" using ($1):($8) title 'Simulated Packet Throughput' with linespoints ls 5 lc rgb "#00008B" , \
      
EOF


<< EOF

set   autoscale
unset log
unset label
set offset graph 0, graph 0.1, graph 00, graph 0
set xtic auto
set ytic auto
set y2tic auto
set xtics nomirror
set ytics nomirror
set title "Varying Client Count"
set xlabel "Number of clients"
set ylabel "Throughput (per second)"
set y2label "Response time (ms)"
set xrange [0:*]
set yrange [0:3500]
set y2range [0:95]
set style fill transparent solid 0.05 noborder
set term png truecolor font "Arial.ttf" 16 dashlength 1 size 1024,768
set output "plots/client.png"
plot  "clients.dat" using ($1):($6/1000000) title 'Measured Response time' with linespoints axes x1y2 ls 4 lc rgb "#006400" , \
      \
      "clients.dat" using ($1):($9/1000000) title 'Simulated Response time' with linespoints axes x1y2 ls 5 lc rgb "green" , \
      \
      "clients.dat" using ($1):($2) title 'Measurement Packet Throughput' with linespoints ls 4 lc rgb "blue", \
      \
      "clients.dat" using ($1):($8) title 'Simulated Packet Throughput' with linespoints ls 5 lc rgb "#00008B" , \
      
EOF


<< EOF

set   autoscale
unset log
unset label
set offset graph 0, graph 0.1, graph 00, graph 0
set xtic auto
set ytic auto
set y2tic auto
set xtics nomirror
set ytics nomirror
set title "Varying Client Retry Delay"
set xlabel "Client retry delay"
set ylabel "Throughput (per second)"
set y2label "Response time (ms)"
set xrange [0:*]
set yrange [0:3500]
set y2range [0:]
set style fill transparent solid 0.05 noborder
set term png truecolor font "Arial.ttf" 16 dashlength 1 size 1024,768
set output "plots/client-delay.png"
plot  "delay.dat" using ($1):($6/1000000) title 'Measured Response time' with linespoints axes x1y2 ls 4 lc rgb "#006400" , \
      \
      "delay.dat" using ($1):($9/1000000) title 'Simulated Response time' with linespoints axes x1y2 ls 5 lc rgb "green" , \
      \
      "delay.dat" using ($1):($2) title 'Measurement Packet Throughput' with linespoints ls 4 lc rgb "blue", \
      \
      "delay.dat" using ($1):($8) title 'Simulated Packet Throughput' with linespoints ls 5 lc rgb "#00008B" , \
   
EOF