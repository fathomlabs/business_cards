#!/bin/bash
python -m SimpleHTTPServer &
simpleserver_PID=$!
echo $simpleserver_PID
sleep 10

echo "How many business cards would you like to generate?"

read ncards

for i in `seq 1 $ncards`;
do
  phantomjs screencapture.js
done

kill $simpleserver_PID
