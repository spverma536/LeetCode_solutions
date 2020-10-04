class Solution {
public:
    int n,m;
    bool isv(int x, int y)
    {
        if(x<0 or y<0 or x>=n or y>=m)
            return 0;
        return 1;
    }
    void dfs(vector<vector<char>>&b, int x, int y)
    {
        if(!isv(x,y))
            return;
        vector<vector<int>>v = {{1,-1},{ 1,0 },{ 1,1 },{ -1,-1 },{ -1,0 },{ -1,1 },{ 0,-1 },{ 0,1 }};
        int cnt=0;
        if(b[x][y]=='E')
        {
            for(int i=0;i<8;i++)
            {
                if(isv(x+v[i][0],y+v[i][1]) and b[x+v[i][0]][y+v[i][1]]=='M')
                {
                    cnt++;
                }
            }
            if(cnt>0)
                b[x][y] = '0'+cnt;
            else
            {
                b[x][y] = 'B';
                for(int i=0;i<8;i++)
                {
                    dfs(b,x+v[i][0],y+v[i][1]);
                }
            }
        }
        
    }
    vector<vector<char>> updateBoard(vector<vector<char>>& b, vector<int>& c) {
        n = b.size();
        m  = b[0].size();
        if(b[c[0]][c[1]]=='M')
        {
            b[c[0]][c[1]]='X';
            return b;
        }
        dfs(b,c[0],c[1]);
        return b;
    }
};
