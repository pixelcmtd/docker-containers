#!/bin/bash

# hack, but it works
{ sleep 3 ; polipo ; } &
tor &

while true ; do

sleep 300

cat << 'EOF' | nc localhost 9051
authenticate ""
signal newnym
quit
EOF

done
