//Atcoder dp educational round vactaion solution
#include<bits/stdc++.h>
using namespace std;

int main(){
	int n;
	cin>>n;
	int dp[n+1][3]{0};
	for(int i=0;i<n;i++){
		int x,y,z;
		cin>>x>>y>>z;
		//x 0,y 1,z 2
		dp[i+1][0] = max(dp[i][1]+x,dp[i][2]+x);
		dp[i+1][1] = max(dp[i][0]+y,dp[i][2]+y);
		dp[i+1][2] = max(dp[i][0]+z,dp[i][1]+z);
	}
	cout<<max({dp[n][0],dp[n][1],dp[n][2]});
}
		
