class Solution {
public:
    bool wordBreak(string s, vector<string>& wd) {
        int n=s.length();
        bool dp[n+1];
        unordered_set<string>m;
        if(wd.size()==0)
            return false;
        for(int i=0;i<wd.size();i++)
            m.insert(wd[i]);
        memset(dp, 0, sizeof dp);
        dp[0]=1;
        for(int i=1;i<=n;i++)
        {
            for(int j=i-1;j>=0;j--)
            {
                if(dp[j])
                {
                    string temp = s.substr(j,i-j);
                    if(m.find(temp)!=m.end())
                    {
                        dp[i]=1;
                        break;
                    }
                }
            }
        }
        return dp[n];
    }
};
