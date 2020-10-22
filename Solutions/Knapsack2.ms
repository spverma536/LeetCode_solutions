//atcoder educational dp round knapsack2 solution
#include<bits/stdc++.h>
using namespace std;

int main(){
	int n,w;
	cin>>n>>w;
	vector<long long> dp(100001,INT_MAX);
	long long ans =0;
	dp[0] = 0;
	for(int j=0;j<n;j++){
		long long wt,v;
		cin>>wt>>v;
		for(long long i=100000;i>=0;i--){
			if(i-v>=0 && dp[i-v]+wt<=w){
				dp[i] = min(dp[i],dp[i-v] + wt);
				ans = max(ans,i);
			}
		}
	}
	cout<<ans;
}
				
