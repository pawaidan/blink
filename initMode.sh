#!/bin/bash
COUNTER=0
while [  $COUNTER -lt $1 ]; do
gpio mode $COUNTER out;
gpio write $COUNTER 0; 
echo "initializing pin " $COUNTER;
let COUNTER=COUNTER+1 
done
