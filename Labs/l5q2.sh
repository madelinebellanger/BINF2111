#!/bin/bash

tsv=$1

sed 's/\t/,/g' $tsv > l5q2.csv
cat l5q2.csv