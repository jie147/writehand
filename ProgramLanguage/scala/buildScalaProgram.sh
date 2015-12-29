#!/usr/bin/env bash

if [ $? -gt 1 ] 	#判断是否有工程名 
then
	echo "please input program name !"
	exit
fi

if [ -d  $1 ] 		#判断是否以存在
then
	echo "$1 is areally！！"
	exit
fi
#创建工程目录结构
mkdir ./$1/
cd ./$1/
mkdir -p ./project/build/ 
mkdir -p ./src/main/scala 
mkdir ./src/main/java 
mkdir ./src/main/resources 
mkdir ./lib_managed 
mkdir ./target
touch ./project/build/.scala 
touch ./project/build.properties
#在src/main/scala中添加scala类
declare -i i=0
for arg in "$@"
do
	i=i+1
	if [ $i -ne 1 ]
	then
		touch ./src/main/scala/$arg.scala
	fi
done

echo "The Program $1 created over!!"
exit
