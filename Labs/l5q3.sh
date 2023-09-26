#!/bin/bash

s1="this is a string"
s2="hello"
s3="strings are very cool"

if [[ ${#s1} -gt ${#s2} && ${#s1} -gt ${#s3} ]]; then
    echo "String 1 is the biggest: $s1"

elif [[ ${#s1} -lt ${#s2} && ${#s2} -gt ${#s3} ]]; then
    echo "String 2 is the biggest: $s2"

elif [[ ${#s1} -lt ${#s3} && ${#s2} -lt ${#s3} ]]; then
    echo "String 3 is the biggest: $s3"

fi