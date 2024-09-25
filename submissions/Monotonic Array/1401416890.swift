# Title: Monotonic Array
# Submission ID: 1401416890
# Status: Wrong Answer
# Date: September 24, 2024 at 09:24:47 PM MDT

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
            } else {
                isDecreasing = true
            }

            if isIncreasing && isDecreasing {
                return false
            }
        }

        return true
    }
}