#!/bin/bash
#
g++ generator.cpp -o gen
echo generator compiled
# exe, filename, seed, t_limit, n_limit, m_limit
# sample
./gen input01.txt 137 3 5 5
./gen input02.txt 452 3 5 5
./gen input03.txt 5457 5 5 5
echo sample input generated
./gen input04.txt 1347 5 25 25
./gen input05.txt 425 5 50 50
./gen input06.txt 557 5 100 100
echo small input generated
./gen input07.txt 13347 10 2000 2000
./gen input08.txt 42325 10 2000 2000
./gen input09.txt 55357 10 2000 2000
echo medium input generated
g++ solution.cpp -o sol
echo solution compiled
# sample
./sol < input01.txt > output01.txt
./sol < input02.txt > output02.txt
./sol < input03.txt > output03.txt
echo sample output generated
./sol < input04.txt > output04.txt
./sol < input05.txt > output05.txt
./sol < input06.txt > output06.txt
echo small output generated
./sol < input07.txt > output07.txt
./sol < input08.txt > output08.txt
./sol < input09.txt > output09.txt
echo medium output generated
zip testcase.zip input01.txt input02.txt input03.txt input04.txt input05.txt input06.txt input07.txt input08.txt input09.txt output01.txt output02.txt output03.txt output04.txt output05.txt output06.txt output07.txt output08.txt output09.txt
echo testcase zipped
