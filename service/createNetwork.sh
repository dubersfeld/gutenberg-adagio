#!/bin/bash

input=$(docker network ls)

echo $input


IFS=$'\n'

lines=($input)

echo "${#lines[@]}"

exists=0

IFS=$' ,\t,\n'
for line in "${lines[@]}"
do
    network=($line) 
    echo "network: ${network[@]}"

    if [  ${network[1]} = 'gutenberg' ]
    then
        echo 'sator'
        exists=1
    else
        echo 'arepo'    
    fi

    echo "Network name: ${network[1]}"
done

if [ $exists -eq 0 ]
then
    #create the network
    docker network create gutenberg
fi

