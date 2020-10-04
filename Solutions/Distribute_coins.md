/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     TreeNode *left;
 *     TreeNode *right;
 *     TreeNode() : val(0), left(nullptr), right(nullptr) {}
 *     TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
 *     TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
 * };
 */
class Solution {
public:
    int moves=0;
    int solve(TreeNode* s, int &moves)
    {
        if(!s)
            return 0;
        int l = solve(s->left,moves);
        int r = solve(s->right,moves);
        moves+= abs(l)+abs(r);
        return s->val+l+r-1;
    }
    int distributeCoins(TreeNode* root) {
        //int ans=0;
        solve(root,moves);
        return moves;
    }
};
