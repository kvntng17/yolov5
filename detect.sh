#!/bin/bash
for file in "$@"
do
	python detect.py --weights yolov5s.pt --conf 0.4 --source "$file"
done

python detect.py --weights yolov5s.pt --conf 0.4 --source http://192.168.0.1:8080
