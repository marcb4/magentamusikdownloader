#!/bin/bash

echo -e "\e[1;31mWarning! \e[0m"
echo "Make sure that you edited dl.py and makelist.py before!"
sleep 3


python dl.py
python makelist.py >> mylist.txt
ffmpeg -f concat -safe 0 -i mylist.txt -c copy OUTPUT.mp4

sleep 1
echo -e "\e[1;32mFinished! \e[0m"
echo "File was formatted as mp4 and named OUTPUT.mp4"
sleep 3
