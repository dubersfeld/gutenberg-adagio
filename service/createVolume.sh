#!/bin/bash

input=$(docker volume ls)

echo $input


IFS=$'\n'

lines=($input)

echo "${#lines[@]}"

exists=0

IFS=$' ,\t,\n'
for line in "${lines[@]}"
do
    volume=($line) 
    echo "volume: ${volume[@]}"

    if [  ${volume[1]} = 'gutenberg1' ]
    then
        echo 'sator'
        exists=1
    else
        echo 'arepo'    
    fi

    echo "Volume name: ${volume[1]}"
done

if [ $exists -eq 0 ]
then
    #create the volume
    docker volume create gutenberg
fi

