# Title: Array Partition
# Submission ID: 1401373260
# Status: Accepted
# Date: September 24, 2024 at 08:13:58 PM MDT

class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        let sortedNumbers = nums.sorted()
        
        var result = 0
        
        for index in stride(from: 0, to: sortedNumbers.count, by: 2) {
            result += sortedNumbers[index]
        }
        
        return result
    }
}