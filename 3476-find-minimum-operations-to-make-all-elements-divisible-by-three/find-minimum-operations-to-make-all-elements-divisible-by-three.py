class Solution:
    def minimumOperations(self, nums: List[int]) -> int:
        ans = 0
        for x in nums:
            mod = x % 3
            if mod !=0:
                ans += min(mod, 3 - mod)

        return ans
        