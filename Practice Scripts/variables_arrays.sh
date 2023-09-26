#!/bin/bash

#------------------------------------------------VARIABLES------------------------------------------------

#Assigning variables
#string_v="variable"
#string_v2="This is also a variable"

#int_v=76
#float_v=12.471


#Printing variables
#echo $string_v, $int_v 
#printf "$string_v2 \n$float_v\n"
#echo ""     #print an empty line


#Using a variable to reference a command
#helloworld=$(echo "Hello World")
#echo $helloworld
#echo ""     #print an empty line


#Finding the length of a string variable
#string_length=${#string_v}
#cho "String length is $string_length characters"
#echo ""     #print an empty line


#Adding the length of two variables together
#math=$(($string_length+${#string_v2}))
#echo "The length of both strings added together is $math"
#echo ""     #print an empty line

#------------------------------------------------ARRAYS------------------------------------------------

array=("this" "is" "an" "item" "in" "an" "array")

echo "The first element is: ${array[0]}"    #first element
echo "The third through sixth elements are: ${array[@]:2:5}"  #elements 3-7
echo "All elements in the array are: ${array[@]}"    #all elements
echo ""     #print an empty line


#print out array with "item" deleted
echo "Delete Item Method #1"
echo ${array[@]/"item"}
echo ""     #print an empty line

echo "Delete Item Method #2"
echo ${array[@]/it*/}
echo ""     #print an empty line

echo "Delete Item Method #3"
unset 'array[3]'    #delete "item" from array completely
echo ${array[@]}    #print out the whole array to make sure it worked
echo ""             #print an empty line


#add "new item" to array
echo "Add Item Method #1"
array=("${array[@]}" "new item")
echo ${array[@]}        #print out the whole array to make sure it worked
unset 'array[6]'       #remove the last item in the array to demonstrate the next command effectively
echo ""                 #print an empty line

echo "Add Item Method #2"
array+=('new item')
echo ${array[@]}        #print out the whole array to make sure it worked