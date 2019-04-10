#!/bin/bash
# filename stopGutenberg.sh

# find if any gutenberg container exists, if yes remove it

input=`docker ps -a | grep gutenberg`

echo "$input"

IFS=$'\n'

lines=($input)

echo "${#lines[@]}"

IFS=$' ,\t,\n'
for line in "${lines[@]}"
do
    container=($line) 
  
    echo "Container ID ${container[0]}"
    docker rm -f  "${container[0]}"
done


