# Title: Monotonic Array
# Submission ID: 1401418245
# Status: Accepted
# Date: September 24, 2024 at 09:26:50 PM MDT

class Solution {
    func isMonotonic(_ nums: [Int]) -> Bool {
        guard nums.count > 1 else {
            return true
        }

        var isIncreasing = false
        var isDecreasing = false

        for index in 1..<nums.count {
            if nums[index] > nums[index - 1] {
                isIncreasing = true
            } else if nums[index] < nums[index - 1] {
                isDecreasing = true
            }

            if isIncreasing && isDecreasing {
                return false
            }
        }

        return true
    }
}