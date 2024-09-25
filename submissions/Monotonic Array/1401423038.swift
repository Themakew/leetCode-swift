# Title: Monotonic Array
# Submission ID: 1401423038
# Status: Accepted
# Date: September 24, 2024 at 09:34:13 PM MDT

class Solution {
    func isMonotonic(_ nums: [Int]) -> Bool {
        guard nums.count > 1 else {
            return true
        }

        var isIncreasing = false
        var isDecreasing = false

        for index in 1..<nums.count {
            if nums[index] == nums[index - 1] {
                continue
            }

            if !isIncreasing && !isDecreasing {
                if nums[index] > nums[index - 1] {
                    isIncreasing = true
                } else {
                    isDecreasing = true
                }
            } else if isIncreasing && nums[index] < nums[index - 1] {
                return false
            } else if isDecreasing && nums[index] > nums[index - 1] {
                return false
            }
        }

        return true
    }
}