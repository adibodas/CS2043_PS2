#!/bin/bash
find ./tweets -maxdepth 1 -type f -name "*.txt" -exec wc -w {} \; | sort -n > freqlist.txt
tail -n 1 freqlist.txt | awk '{print $1}' > max_words.txt
head -n 1 freqlist.txt | awk '{print $1}' > min_words.txt
rm -r freqlist.txt

cd tweets
numwords="$(wc -w *.txt | tail -n 1 | awk '{print $1}')"
numtweets="$(ls -l *.txt | wc -l)"
cd ..
echo $((numwords / numtweets)) > avg_words.txt

find ./tweets -maxdepth 1 -type f -name "*.txt" -exec wc -c {} \; | sort -n > freqlist.txt
tail -n 1 freqlist.txt | awk '{print $1}' > max_chars.txt
head -n 1 freqlist.txt | awk '{print $1}' > min_chars.txt
rm -r freqlist.txt

cd tweets
numwords="$(wc -c *.txt | tail -n 1 | awk '{print $1}')"
numtweets="$(ls -l *.txt | wc -l)"
cd ..
echo $((numwords / numtweets)) > avg_chars.txt


