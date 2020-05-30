#!/bin/bash
#
g++ generator.cpp -o gen.out
echo generator compiled
# exe, filename, seed, t_limit, n_limit, m_limit
# sample
./gen.out input/input01.txt 137 3 5 5
./gen.out input/input02.txt 452 3 5 5
./gen.out input/input03.txt 5457 5 5 5
echo sample input generated
./gen.out input/input04.txt 1347 5 25 25
./gen.out input/input05.txt 425 5 50 50
./gen.out input/input06.txt 557 5 100 100
echo small input generated
./gen.out input/input07.txt 13347 10 2000 2000
./gen.out input/input08.txt 42325 10 2000 2000
./gen.out input/input09.txt 55357 10 2000 2000
echo medium input generated
g++ solution.cpp -o sol.out
echo solution compiled
# sample
./sol.out < input/input01.txt > output/output01.txt
./sol.out < input/input02.txt > output/output02.txt
./sol.out < input/input03.txt > output/output03.txt
echo sample output generated
./sol.out < input/input04.txt > output/output04.txt
./sol.out < input/input05.txt > output/output05.txt
./sol.out < input/input06.txt > output/output06.txt
echo small output generated
./sol.out < input/input07.txt > output/output07.txt
./sol.out < input/input08.txt > output/output08.txt
./sol.out < input/input09.txt > output/output09.txt
echo medium output generated
zip testcase.zip input/* output/*
echo testcase zipped
