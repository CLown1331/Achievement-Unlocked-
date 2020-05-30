#include <iostream>
#include <cstring>
#include <queue>
#include <map>
using namespace std;

int t, n, m, cs, c;
char s[2005][2005];
int dx[] = {0, -1, 1, 0};
int dy[] = {1, 0, 0, -1};
char direction[] = "ENSW";
bool vis[2005][2005];
map <int, string> mp[2005];

string bfs() {
    memset(vis, 0, sizeof vis);
    for (int i = 0; i < n; i++) {
        mp[i].clear();
    }
    queue <int> q;
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            if (s[i][j] != 'S') {
                continue;
            }
            q.push(i);
            q.push(j);
            vis[i][j] = true;
        }
    }
    while (!q.empty()) {
        int x = q.front(); q.pop();
        int y = q.front(); q.pop();
        for (int i = 0; i < 4; i++) {
            int nx = x + dx[i];
            int ny = y + dy[i];
            if (nx < 0 || nx >= n || ny < 0 || ny >= m || vis[nx][ny] || s[nx][ny] == 'X') {
                continue;
            }
            vis[nx][ny] = true;
            q.push(nx);
            q.push(ny);
            mp[nx][ny] = mp[x][y] + direction[i];
            if (s[nx][ny] == 'E') {
                return mp[nx][ny];
            }
        }
    }
    return "Impossible";
}

int main() {

    cin >> t;

    for (cs = 1; cs <= t; cs++) {
    
        cin >> n >> m;


        for (int i = 0; i < n; i++) {
            cin >> s[i];
        }

        string ans = bfs();

        cout << "Case #" << cs << ": " << ans << "\n";

    }
    return 0;
}