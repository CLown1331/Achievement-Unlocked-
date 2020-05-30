#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <algorithm>
#include <cassert>
#include <cstring>
#include <random>
using namespace std;
char ar[2005][2005];

// exe, filename, seed, t_limit, n_limit, m_limit
int main(int argc, char** argv) {

    if (argc != 6) {
        if (argc != 5) {
            fprintf(stderr, "must provide filename, seed, t_limit, n_limit, m_limit");
            assert(false);
        }
    }

    char* filename = argv[1];

    int seed = atoi(argv[2]);

    int t_limit = atoi(argv[3]);

    int n_limit = atoi(argv[4]);

    int m_limit = atoi(argv[5]);

    FILE *file = fopen(filename, "w+");

    mt19937_64 rng(seed);

    int t = t_limit;

    int n = n_limit;

    int m = m_limit;

    fprintf(file, "%d\n", t);

    for (int cs = 0; cs < t; cs++) {
        fprintf(file, "%d %d\n", n, m);
        memset(ar, 0, sizeof ar);
        int sx = rng() % n;
        int sy = rng() % m;
        ar[sx][sy] = 'S';
        int ex, ey;
        do {
            ex = rng() % n;
            ey = rng() % m;
        } while (sx == ex && sy == ey);
        ar[ex][ey] = 'E';
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                if (ar[i][j] != 0) {
                    continue;
                }
                char c = ".X"[rng() & 1];
                ar[i][j] = c;
            }
            ar[i][m] = '\0';
        }
        for (int i = 0; i < n; i++) {
            fprintf(file, "%s\n", ar[i]);
        }
    }

    fclose(file);

    return 0;
}
