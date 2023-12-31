#!/bin/bash
#
g++ generator.cpp -o gen.out
echo generator compiled
rm -rf Input Output testcase.zip
mkdir -p Input
mkdir -p Output
# exe, filename, seed, t_limit, n_limit
# sample
./gen.out Input/input1.txt 137 3 5
./gen.out Input/input2.txt 452 3 5
./gen.out Input/input3.txt 5457 5 5
echo sample input generated
./gen.out Input/input4.txt 1347 5 25
./gen.out Input/input5.txt 425 10 50
./gen.out Input/input6.txt 557 15 100
echo small input generated
./gen.out Input/input7.txt 13347 25 2000
./gen.out Input/input8.txt 42325 50 2000
./gen.out Input/input9.txt 55357 100 2000
echo medium input generated
g++ solution.cpp -std=c++17 -o sol.out
echo solution compiled
# sample
./sol.out < Input/input1.txt > Output/output1.txt
./sol.out < Input/input2.txt > Output/output2.txt
./sol.out < Input/input3.txt > Output/output3.txt
echo sample output generated
./sol.out < Input/input4.txt > Output/output4.txt
./sol.out < Input/input5.txt > Output/output5.txt
./sol.out < Input/input6.txt > Output/output6.txt
echo small output generated
./sol.out < Input/input7.txt > Output/output7.txt
./sol.out < Input/input8.txt > Output/output8.txt
./sol.out < Input/input9.txt > Output/output9.txt
echo medium output generated
zip testcase.zip Input/* Output/* Config.json
echo testcase zipped
