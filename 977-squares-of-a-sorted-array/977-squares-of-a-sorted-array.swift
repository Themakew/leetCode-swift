class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var result = Array(repeating: 0, count: nums.count)
        var i = 0
        var j = nums.count - 1
        var k = j
        while i <= j {
            if abs(nums[i]) > abs(nums[j]) {
                result[k] = nums[i] * nums[i]
                i += 1
            } else {
                result[k] = nums[j] * nums[j]
                j -= 1
            }
            k -= 1
        }
        return result
    }
}