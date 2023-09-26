#!/bin/bash

for file in *.fasta; do
    echo $file
    grep ">" $file
done