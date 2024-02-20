#!/bin/sh
set -uxe

tor &
sleep 3
polipo &

while true ; do

sleep 300

echo 'authenticate ""
signal newnym
quit' | nc localhost 9051

done
