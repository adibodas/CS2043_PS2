#!/bin/bash
find ./tweets -maxdepth 1 -type f -name "*.txt" -exec grep -o -E '\w+' {} \; | sort | uniq -c -i | sort -nr | head -n 10 > most_common.txt