### Problem
`Given a rooted binary tree, return the lowest common ancestor of its deepest leaves.`

### Constraints
* The given tree will have between 1 and 1000 nodes.
* Each node of the tree will have a distinct value between 1 and 1000.

### Provided Code
```
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
```

### Solution
```
class Solution(object):
    def lcaDeepestLeaves(self, root):
        if not root:
            return None
        self.res = None
        self.maxDepth = -1
        self.helper(root, 0)
        return self.res
        
    def helper(self, root, depth):
        self.maxDepth = max(self.maxDepth, depth)
        if not root:
            return depth
        left = self.helper(root.left, depth+1)
        right = self.helper(root.right, depth+1)
        if left == right == self.maxDepth:
            self.res = root
        return max(left, right)
        
class Solution2(object):
    def lcaDeepestLeaves(self, root):
        return self.helper(root)[0]
        
    def helper(self, root):
        if not root:
            return None, 0
        n1, l1 = self.helper(root.left)
        n2, l2 = self.helper(root.right)
        
        if l1 > l2:
            return n1, l1+1
        elif l1 < l2:
            return n2, l2+1
        else:
            return root, l1+1
```
