#!/bin/bash

sed -n '255,298p' frankenstein.txt | tr [:space:] "\n" | tr [:punct:] "\n" | tr [A-Z] [a-z] | grep -v "^\s*$" | sort | uniq -c | sort -bnr | head -n 10