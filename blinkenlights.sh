#!/bin/bash 
COUNTER=0
while [  $COUNTER -lt $1 ]; do
if(((COUNTER) & 1))
then    
gpio write 0 1;
fi
if(((COUNTER>>1) & 1))
then    
gpio write 1 1;
fi
if(((COUNTER>>2) & 1))
then    
gpio write 2 1;
fi
if(((COUNTER>>3) & 1))
then    
gpio write 3 1;
fi
sleep 1;
COUNTER3=0
while [ $COUNTER3 -lt 4 ]; do
gpio write $COUNTER3 0;
let COUNTER3=COUNTER3+1 
done
sleep 1;
let COUNTER=COUNTER+1 
done
COUNTER3=0
while [ $COUNTER3 -lt 4 ]; do
gpio write $COUNTER3 0;
let COUNTER3=COUNTER3+1 
done

