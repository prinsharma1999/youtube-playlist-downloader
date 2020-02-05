#!/bin/bash
#to check package is installed or not without distribution dependency
pkg=youtube-dl
which $pkg > /dev/null 2>&1
if [ $? == 0 ]
then
echo "type 1 for video : type 2 for playlist :"
read -p "enter here : " u
else
read -p "$pkg is not installed. Answer Y/N if want installation_ " request
if  [ $request == "Y" ]
then
apt-get install $pkg
fi
fi
#to download video using youtube-dl
read -p "enter the folder name : " fol
mkdir $fol
cd $fol
n=youtube-dl
m=-cit
o=-f
p=best
read -p "hello put your link here : " url
if [ "$u" = "1" ];
then
	$n $o $p $url
else [ "$u" = "2" ];
$n $m $url
fi
ls > list.txt
#there are still need to be changed a lot of , so make changes if you can 
