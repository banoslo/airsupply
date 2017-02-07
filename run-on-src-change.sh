#!/bin/sh

while true
do
	inotifywait -r -e modify main.cpp Makefile
	make main
	sudo ./main
done
