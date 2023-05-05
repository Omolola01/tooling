#! /bin/bash
# ECHO Command
# echo Hello World! 

# VARIABLES
# Uppercase by convention
# Letters, Numbers, underscore
#NAME="Bob"
#echo "My name is $NAME"   
#echo "My name is ${NAME}"

# USER INPUT
#read -p  "Enter your name: " NAME
#echo "Hello $NAME, nice to meet you!"

# SIMPLE IF STATEMENT
#if [ "$NAME" == "Lola" ] 
#then
#echo "Your name is Lola"
#fi

#IF-ELSE
#if [ "$NAME" == "Lola" ]
#then
#echo "Your name is Lola"

#ELSE-IF (elif)
#
#echo "Your name is Not Lola or Bob"
#fi

# COMPARISON
#NUM1=31
#NUM2=5
#if [ "$NUM1" -gt "$Num2" ]
#then
 #echo "$NUM1 is greater than $NUM2"
#else 
 #echo "$NUM1 is less than $NUM2"
#fi

# FILE CONDITIONS
#FILE="test.txt"
#if [ -f "$FILE" ]
#then 
 #echo "$FILE exists"
 #else
  #echo "$FILE does NOT exists"
  #fi

#CASE STATEMENT
 #read -p "Are you 21 or over? Y/N " ANSWER
#case "$ANSWER" in
 # [yY] | [yY][eE][sS])
  #;;
   #[nN] | [nN][oO])
     #echo "sorry, no drinking"
     #;;
     #*)
      #echo "pls enter y/yes or n/no"
      #esac

 # SIMPLE FOR LOOP
#NAMES="Brad Kevin Alice Mark"
 #do 
  # echo "Hello $NAME"
 #done

 # For LOOP TO RENAME FILES
 FILE=$(ls *.txt)
 NEW="new"
  for FILE in $FILES
    do 
     echo "Renaming $FILES to new-$FILE"
     mv $FILE to $NEW-$FILES
 done  

