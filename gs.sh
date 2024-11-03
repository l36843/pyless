#!/bin/bash

##  Git switch from one branch to another

echo "Do you want to switch git branch. Enter [Y/N)]: "
read choic
#echo "user input is :" $choic
#if [$choic="Y"] $choic = "y" ] || [ $choic = "Yes" ] || [ $choic = "yes" ] ; 
if [ $choic="Y" ] 
then	
	echo "Below are current active branches in Git."
#	var1=`git branch`
	var1=`git branch --all|grep 'remotes/origin/*'|grep -v 'remotes/origin/HEAD'|grep -v 'remotes/origin/MASTER'`
#	v2=awk -F "/" '{print $3}' $var1
	select i in $var1
	do
	  var2=${i:15:10}	
	  git checkout --f $var2
	  exit
  	done  
elif [ choic="N"]
then
	echo "You selected N. Thanks Bye"
	exit	
else       	
	echo "choice is wrong."
fi

#!/bin/bash
# echo "Enter password"
#read pass
#if [ $pass="Y" ]
#then
#	  echo "The password is correct."
#  else
#	    echo "The password is incorrect, try again."
#fi
