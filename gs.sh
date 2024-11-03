#!/bin/bash

##  Git switch from one branch to another

echo "Do you want to switch git branch. Enter [Y/N)]: "
read choic
#echo "user input is :" $choic
#if [$choic="Y"] $choic = "y" ] || [ $choic = "Yes" ] || [ $choic = "yes" ] ; 
echo " Choice selected is : " $choic
if [ $choic="Y" ] 
then	
	echo "Below are current active branches in Git."
	var1=`git branch --all|grep 'remotes/origin/*'|grep -v 'remotes/origin/HEAD'|grep -v 'remotes/origin/MASTER'`
	select i in $var1
	do
	  var2=${i:15:10}
  	  echo " Branch selected is $var2"	  
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
