# Title: Monotonic Array
# Submission ID: 1401417471
# Status: Runtime Error
# Date: September 24, 2024 at 09:25:40 PM MDT

class Solution {
    func isMonotonic(_ nums: [Int]) -> Bool {
        guard nums.count > 1 else {
            return true
        }

        var isIncreasing = false
        var isDecreasing = false

        for index in nums {
            if nums[index + 1] > nums[index] {
                isIncreasing = true
            } else if nums[index + 1] < nums[index] {
                isDecreasing = true
            }

            if isIncreasing && isDecreasing {
                return false
            }
        }

        return true
    }
}