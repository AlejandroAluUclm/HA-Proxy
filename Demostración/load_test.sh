#!/bin/bash
while true; do
    ab -n 1000 -c 10 http://localhost/ >> results.txt
    sleep 1
done
