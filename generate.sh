#!/bin/bash
python -m SimpleHTTPServer &
simpleserver_PID=$!
echo $simpleserver_PID
sleep 10

for i in `seq 1 10`;
do
  phantomjs screencapture.js
done

kill $simpleserver_PID
