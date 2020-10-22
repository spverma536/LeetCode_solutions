//Atcoder dp educational round contest knapsack1 solution
#include<bits/stdc++.h>
using namespace std;

int main(){
	int n,w;
	cin>>n>>w;
	vector<long long> dp(w+1,0);
	long long ans = 0;
	dp[0] = 1;
	for(int j=0;j<n;j++){
		long long wt,v;
		cin>>wt>>v;
		for(int i=w;i>=0;i--){
			if(i-wt>0 && dp[i-wt]>0){
				dp[i] = max(dp[i],dp[i-wt]+v);
			}
			if(i-wt==0){
				dp[i] = max(dp[i],v);
			}
			ans = max(ans,dp[i]);
		}
	}
	cout<<ans;
}
			
			
