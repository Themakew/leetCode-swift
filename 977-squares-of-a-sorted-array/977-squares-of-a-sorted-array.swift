class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var left = 0
        var right = nums.count - 1
        var result = [Int](repeating: 0, count: nums.count)
        
        for i in 0..<nums.count {
            var curLeft = nums[left] * nums[left]
            var curRight = nums[right] * nums[right]
            
            result[nums.count - (i + 1)] = max(curLeft, curRight)
            
            left += curLeft >= curRight ? 1 : 0
            right -= curLeft < curRight ? 1 : 0
        }

        return result
    }
}