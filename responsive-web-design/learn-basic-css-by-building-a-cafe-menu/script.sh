#!/bin/bash

NUMBER_OF_DIRECTORIES=91

read -p "How many directories should I create? " NUMBER_OF_DIRECTORIES

function make_directory() {
    local n=$1
    for i in $(seq -w 0 $n)
    do
        if [ ! -d "step-$i" ]; then  # Directory DOES NOT EXIST
            mkdir "step-$i"
        fi
        touch "step-$i/index.html"  # Create index.html either way
    done
}

make_directory $NUMBER_OF_DIRECTORIES
