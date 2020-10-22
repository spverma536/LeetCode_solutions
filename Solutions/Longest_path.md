//atcoder educational dp contest longest path solution

#include<bits/stdc++.h>
using namespace std;

int dist[100002]{0};
bool vis[100002];
vector<int> adj[100002];
void dfs(int src){
	vis[src] = true;
	for(auto i : adj[src]){
		if(!vis[i]){
			dfs(i);
		}
		dist[src] = max(dist[src],dist[i]+1);
	}
}

int main(){
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
	int n,m;
	cin>>n>>m;
	for(int i=0;i<m;i++){
		int x,y;
		cin>>x>>y;
		adj[x].push_back(y);
	}
	for(int i=1;i<=n;i++){
		if(!vis[i])
		dfs(i);
	}
	int ans = 0;
	for(int i=1;i<=n;i++){
		ans = max(ans,dist[i]);
	}
	cout<<ans;
}
	
