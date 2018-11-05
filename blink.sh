#!/bin/bash
COUNTER=0
         while [  $COUNTER -lt 5 ]; do
COUNTER2=0
         while [  $COUNTER2 -lt $1 ]; do
		gpio write $COUNTER2 1;
             let COUNTER2=COUNTER2+1 
         done
sleep 1;
COUNTER2=0
         while [  $COUNTER2 -lt $1 ]; do
		gpio write $COUNTER2 0;
             let COUNTER2=COUNTER2+1 
         done
sleep 1;
             let COUNTER=COUNTER+1 
         done

