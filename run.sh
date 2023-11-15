#!/bin/bash
#
g++ generator.cpp -o gen.out
echo generator compiled
rm -rf Input Output testcase.zip
mkdir -p Input
mkdir -p Output
# exe, filename, seed, t_limit, n_limit
# sample
./gen.out Input/input01.txt 137 3 5
./gen.out Input/input02.txt 452 3 5
./gen.out Input/input03.txt 5457 5 5
echo sample input generated
./gen.out Input/input04.txt 1347 5 25
./gen.out Input/input05.txt 425 10 50
./gen.out Input/input06.txt 557 15 100
echo small input generated
./gen.out Input/input07.txt 13347 25 2000
./gen.out Input/input08.txt 42325 50 2000
./gen.out Input/input09.txt 55357 100 2000
echo medium input generated
g++ solution.cpp -std=c++17 -o sol.out
echo solution compiled
# sample
./sol.out < Input/input01.txt > Output/output01.txt
./sol.out < Input/input02.txt > Output/output02.txt
./sol.out < Input/input03.txt > Output/output03.txt
echo sample output generated
./sol.out < Input/input04.txt > Output/output04.txt
./sol.out < Input/input05.txt > Output/output05.txt
./sol.out < Input/input06.txt > Output/output06.txt
echo small output generated
./sol.out < Input/input07.txt > Output/output07.txt
./sol.out < Input/input08.txt > Output/output08.txt
./sol.out < Input/input09.txt > Output/output09.txt
echo medium output generated
zip testcase.zip Input/* Output/* Config.ini
echo testcase zipped
