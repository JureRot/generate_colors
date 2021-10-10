#!/bin/bash

dirname=colors_16bit
mkdir $dirname

for i in $(seq 0 16 255)
do
	for j in $(seq 0 16 255)
	do
		for k in $(seq 0 16 255)
		do
			color=$(printf "#%02x%02x%02x" $i $j $k)
			name=$(printf "%02x%02x%02x.png" $i $j $k)

			#convert -size 16x16 canvas:'rgb($i, $j, $k)' ./colors/
			convert -size 16x16 canvas:$color ./$dirname/$name
		done
	done
done

