#!/bin/bash
for j in $(
    for i in $(
        apt search nginx 2>&1 |\
        grep nginx |\
        grep installed |\
        grep -v lib |\
        cut -d/ -f 1
    ); 
    do 
        dpkg -L ${i}; 
    done);
do 
    if [[ -d $j ]]; 
    then 
        echo "dir  $j"; 
    fi; 
    
    if [[ -f $j ]]; 
    then 
        echo "file $j"; 
    fi; 
done | sort
