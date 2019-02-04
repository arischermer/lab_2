#!/bin/bash
# Authors : Ari Schermer, Alex Tsalyuk
# Date: 1/31/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!


echo "Enter a filename: "
read file
echo "Type the expression you would like to search for: "
read regex

grep $regex $file #> command_results.txt

#prints the count (-c) of telephone #'s found in regex_practice.txt. 
#Telephone # = xxx-xxx-xxxx where x is in 0 - 9
grep -c "[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}" "regex_practice.txt"

#prints the number of items (-c) with an '@'  from regex_practice.txt
grep -c "@" "regex_practice.txt"

#finds items with xxx-xxx-xxxx where x is an int 0-9 in regex_practice.txt and stores all of the hits in phone_results.txt
grep "303-[0-9]\{3\}-[0-9]\{4\}" "regex_practice.txt" > "phone_results.txt"

#finds items with geocities.com from regex_practice.txt and stores all of the hits in email_results.txt
grep "@geocities.com" "regex_practice.txt" > "email_results.txt"

grep "$regex" "regex_practice.txt" > "command_results.txt"

git add .
git commit -m 'adding new files to repository'
push origin master
