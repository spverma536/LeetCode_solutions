class Solution {
public:
    int removeCoveredIntervals(vector<vector<int>>& giv) {
        sort(giv.begin(),giv.end());
        if(giv.size()==1)
            return 1;
        for(int i=0;i<giv.size();i++)
        {for(int j=0;j<giv[i].size();j++)
                cout<< giv[i][j]<< " ";
        cout<<endl;
        }
        //int
        cout<<endl;
        for(int i=1;i<giv.size();)
        {
            //i--;
            cout<< giv[i][0]<< " -> "<< giv[i][1]<<endl;
            if(giv[i][0]>=giv[i-1][0] and giv[i][1]<=giv[i-1][1])
            {giv.erase(giv.begin()+i,giv.begin()+(i+1));}
            else 
                i++;
            //i--;
        }
        //giv.erase(giv.begin()+1,giv.begin()+2);
        for(int i=0;i<giv.size();i++)
        {for(int j=0;j<giv[i].size();j++)
                cout<< giv[i][j]<< " ";
        cout<<endl;
        }
        int an=giv.size();
        return an;
    }
};
