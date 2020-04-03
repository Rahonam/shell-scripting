#! /usr/bin/bash

#source : https://www.youtube.com/watch?v=cQepf9fY6cE&list=PLS1QulWo1RIYmaxcEqw5JhK3b-6rgdWO_&index=1

# #comment
# echo "Hello world!"


# #system variable - by OS
# #CAPITAL cases
# echo $BASH
# echo Our shell version is $BASH_VERSION
# echo $HOME
# echo $PWD


# #user variables - by users
# name=Manohar
# 10=10
# ten=10
# echo My name is $name
# echo variable $10 is invalid
# echo $ten


# #input
# echo "Enter your name: "
# read name
# echo Hey $name!

# echo "Enter two integers: "
# read num1 num2
# echo Sum is $(($num1+$num2))

# #input prompt in same line
# read -p "Enter Username: " user_name

# #input password
# read -sp "Enter Password: " pass_word

# echo
# echo "Your Username: $user_name"
# echo "Your Password: $pass_word"

# #input in to array
# echo "Enter names: "
# read -a names
# echo "Name at 0: ${names[0]}, 1: ${names[1]}"

# #default input variable
# echo "Enter your reply: "
# read
# echo "Your reply is: $REPLY"


#passing arguments
# echo $0 $1 $2 $3

# #passing arguments as array
# args=("$@")
# echo ${args[0]} ${args[1]}
# echo $@
# echo $#


#conditional construct

#string comparision
# [ s1 = s2 ]  (true if s1 same as s2, else false)
# [ s1 != s2 ]  (true if s1 not same as s2, else false)
# [ s1 ]   (true if s1 is not empty, else false)
# [ -n s1 ]   (true if s1 has a length greater then 0, else false)
# [ -z s2 ]   (true if s2 has a length of 0, otherwise false)
#use [[]] for angle brackets: ==, !=, <, >

#number comparision
# [ n1 -eq n2 ]  (true if n1 same as n2, else false)
# [ n1 -ge n2 ]  (true if n1greater then or equal to n2, else false)
# [ n1 -le n2 ]  (true if n1 less then or equal to n2, else false)
# [ n1 -ne n2 ]  (true if n1 is not same as n2, else false)
# [ n1 -gt n2 ]  (true if n1 greater then n2, else false)
# [ n1 -lt n2 ]  (true if n1 less then n2, else false)
#use (()) for angle brackets: ==, !=, <, >, <=, >=

# word=xyz
# if [ $word == "abc" ]
# then
#     echo "True"
# elif [ $word == "xyz" ]
# then
#     echo "True for 2nd case"
# else
#     echo "False"
# fi


# #file validation
# echo -e "Enter the name of the file: \c"
# read file_name

#-e file exist
#-f file exist and regular file
#-d directory exist
#-s file empty
#-c character files
#-b block files (multimedia)
#-w write permissions
#-r read permissions
#-x execute permissions

# if [ -s $file_name ]
# then
#     echo "$file_name True!"
# else
#     echo "$file_name not True!"
# fi

# #appending file
# if [ -f $file_name ]
# then
#     if [ -w $file_name ]
#     then
#         echo "Type some text. Quit: ctrl+d"
#         cat >> $file_name
#     else
#         echo "$file_name have no write permissions!"
#     fi
# else
#     echo "$file_name not Found!"
# fi


#Logical operator

# age=25

# # if [ "$age" -gt 18 -a "$age" -lt 30 ]
# # if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]
# # if [[ "$age" -gt 18 && "$age" -lt 30 ]]
# # if [ "$age" -gt 18 ] || [ "$age" -lt 30 ]
# # if [ "$age" -gt 18 -o "$age" -lt 30 ]
# if [[ "$age" -gt 18 || "$age" -lt 30 ]]
# then
#     echo "True!"
# else
#     echo "False!"
# fi


#arithmetic operations

# num1=20
# num2=5

# echo $(( num1 + num2 ))
# echo $(( num1 - num2 ))
# echo $(( num1 * num2 ))
# echo $(( num1 / num2 ))
# echo $(( num1 % num2 ))

# echo $(expr $num1 + $num2 )
# echo $(expr $num1 - $num2 )
# echo $(expr $num1 \* $num2 ) #escape * for expr
# echo $(expr $num1 / $num2 )
# echo $(expr $num1 % $num2 )

#floating point
#bc - basic calculator
#for manual run: man bc
# num1=20.5
# num2=5

# echo "$num1 + $num2" | bc
# echo "$num1 - $num2" | bc
# echo "$num1 * $num2" | bc
# echo "scale=20; $num1 / $num2" | bc
# echo "$num1 % $num2" | bc

# #math library -l
# echo "scale=2; sqrt($num1)" | bc -l
# echo "scale=2; 3^3" | bc -l


#case statement
# vehicle=$1

# case $vehicle in
#     "car" )
#         echo "You entered car." ;;
#     "bicycle" )
#         echo "You entered bicycle." ;;
#     "truck" )
#         echo "You entered truck." ;;
#     * )
#         echo "You entered $vehicle"
# esac

# echo -e "Enter some character: \c"
# read value

# case $value in
#     [a-z] )
#         echo "You entered small letter $value." ;;
#     [A-Z] )
#         echo "You entered capital letter $value." ;;
#     [0-9] )
#         echo "You entered number $value" ;;
#     ? )
#         echo "You entered special character $value" ;;
#     * )
#         echo "You entered $value" ;;
# esac


# #array variables
# os=('ubuntu' 'windows' 'kali')
# #add element
# os[3]='mac'
# os[6]='fedora'
# #update element
# os[1]='fedora'
# #remove element
# unset os[1]
# echo "${os[@]}"
# echo "${os[2]}"
# #index of elements
# echo "${!os[@]}"
# #length of array
# echo "${#os[@]}"

# string=kugku
# echo "${string[@]}"
# #value of string at index 0
# echo "${string[0]}"
# #nothing value at index 1
# echo "${string[1]}"
# #length
# echo "${#string[@]}"


#while loop
# n=1
# # while [ $n -le 10 ]
# while (( $n <= 3 ))
# do
#     echo $n
#     # n=$(( n+1 ))
#     (( n++ ))

#     # sleep of 1s
#     sleep 1
    
#     #opening terminal
#     # gnome-terminal &
#     # xterm &
# done


#file handling

#stream the content into input redirection <
# while read p
# do
#     echo $p
# done < hello.sh

#read in single variable
# cat hello.sh | while read p
# do
#     echo $p
# done

#read using IFS - Internal Field Separator
# while IFS= read -r line
# do
#     echo $line
# done < hello.sh


#until loop
# n=1

# #do if [condition is false]
# until [ $n -gt 10 ]
# do
#     echo $n
#     (( n++ ))
# done


#for loop
# for n in 1 2 3 4
# do
#     echo $n
# done

#for BASH_VERSION > 3.0
#shorthand
# for n in {1..4}
#for BASH_VERSION > 4.0
#increment
# for n in {1..4..2}
# do
#     echo $n
# done

# for (( i=0; i<4; i++ ))
# do
#     echo $i
# done

# for command in ls pwd date
# do
#     echo "--------$command------------"
#     $command
# done

# for item in *
# do
#     #print directories
#     if [ -d $item ]
#     then
#         echo $item
#     fi
#     #print files
#     if [ -f $item ]
#     then
#         echo $item
#     fi
# done


#select loop
# select value in mano har kum ar
# do
#     echo $value
# done

# select value in mano har kum ar
# do
#     case $value in
#     mano )
#         echo Hey MANO!
#         ;;
#     * )
#         echo Hey $value
#         ;;
#     esac
# done


#break and continue
# for (( i=1; i<10; i++ ))
# do
#     if [ $i -gt 5 ]
#     then
#         break
#     fi
#     echo $i
# done

for (( i=1; i<10; i++ ))
do
    if [ $i -eq 5 -o $i -eq 7 ]
    then
        continue
    fi
    echo $i
done