#!/bin/sh
cd ~
mkdir shell_30min
cd shell_30min
for((i=0; i<5; i++)); do
    touch test_$i.txt
done