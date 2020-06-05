#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <algorithm>
#include <cassert>
#include <cstring>
#include <random>
using namespace std;
char ar[2005][2005];
using ll = long long;

// exe, filename, seed, t_limit, n_limit
int main(int argc, char** argv) {

    if (argc != 5) {
        fprintf(stderr, "must provide filename, seed, t_limit, n_limit");
        assert(false);
    }

    char* filename = argv[1];

    int seed = atoi(argv[2]);

    int t_limit = atoi(argv[3]);

    ll n_limit = atoll(argv[4]);

    FILE *file = fopen(filename, "w+");

    mt19937_64 rng(seed);

    int t = t_limit;
    
    ll n = n_limit;

    fprintf(file, "%d\n", t);

    for (int cs = 0; cs < t; cs++) {
        ll a = (rng() % n) + 1;
        ll b = rng() % (a + 1);
        fprintf(file, "%lld %lld\n", a, b);
    }

    fclose(file);

    return 0;
}
