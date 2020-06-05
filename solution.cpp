#include <iostream>
#include <cstring>
#include <cassert>
#include <numeric>
#include <queue>
#include <cmath>
#include <map>
using namespace std;
using ll = long long;
const ll a_lim = 1e18;

int main() {

    int g, c;

    ll a, u;

    cin >> g;

    c = 0;

    assert(1 <= g && g <= 100);

    while (g--) {

        cin >> a >> u;

        assert(1 <= a && a <= a_lim);

        assert(0 <= u && u <= a);

        ll gc = gcd(a, u);
        
        assert(gc);

        a /= gc;

        u /= gc;

        assert(u <= a);

        cout << "Game #" << ++c << ": " << u << " / " << a << "\n";
    }

    return 0;
}