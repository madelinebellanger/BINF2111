#!/bin/bash

diff corrupted.fastq MultiN.fastq 

printf "\nOR\n\n"

sdiff -l corrupted.fastq MultiN.fastq | cat -n | grep -v -e '($'