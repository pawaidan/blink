#!/bin/bash 
COUNTER=$1
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
sleep 2;
COUNTER3=0
while [ $COUNTER3 -lt 4 ]; do
gpio write $COUNTER3 0;
let COUNTER3=COUNTER3+1 
done

