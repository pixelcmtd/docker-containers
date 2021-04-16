#!/bin/bash

tor &

while true ; do

cat << 'EOF' | nc localhost 9051
authenticate ""
signal newnym
quit
EOF

sleep 60

done
