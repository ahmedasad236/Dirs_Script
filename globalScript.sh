#!/bin/bash


# This script creates directories with that have the same sub directories
################################################################

# variables

directories=()
subDirectories=() 
###################################################################
# ui

printf "===========================================================================\n\n"
printf "Create Different directories with the same subdirectories\n\n"
printf "===========================================================================\n\n"

##################################################################

#read the Parent directories name
printf "Enter the Parent directories(ctrl+D to finish): \n"


while read dir
do
    directories=("${directories[@]}" $dir)
done

#################################################################

#read the Parent directories name
printf "Enter the subdirectories(ctrl+D to finish): \n"
while read dir
do
    subDirectories=("${subDirectories[@]}" $dir)
done

################################################################
# creation of directories
 for (( i=0; i<"${#directories[@]}"; i++ ))
 do
     mkdir -p "${directories[$i]}"
     cd "./${directories[$i]}"
     for (( j=0; j<"${#subDirectories[@]}"; j++ ))
     do
       mkdir -p "${subDirectories[$j]}"
     done
     cd ../
 done

################################################################
# successfully created
echo "Successfully created :)"



