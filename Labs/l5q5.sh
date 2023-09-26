#!/bin/bash
 
start=$1
end=$2
file=$3
 
gsed -n "$start,$end p" "$file"

# bash l5q5.sh 2 6 example2.fasta
