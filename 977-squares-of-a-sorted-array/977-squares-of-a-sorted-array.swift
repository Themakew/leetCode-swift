class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        var i = 0
        var j = nums.count - 1
        while i <= j {
          if abs(nums[i]) > abs(nums[j]) {
            result.append(nums[i] * nums[i])
            i += 1
          } else {
            result.append(nums[j] * nums[j])
            j -= 1
          }
        }
        return result.reversed()
    }
}