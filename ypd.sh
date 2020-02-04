#!/bin/bash
read -p "enter the folder name : " fol
mkdir $fol
cd $fol
n=youtube-dl
m=-cit
o=-f
p=best
echo "type 1 for video : type 2 for playlist :"
#echo " :"
read -p "enter here : " u
read -p "hello put your link here : " url
if [ "$u" = "1" ];
then
	$n $o $p $url
fi
if [ "$u" = "2" ];
then
	$n $m $url
fi

