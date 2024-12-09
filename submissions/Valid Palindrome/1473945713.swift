# Title: Valid Palindrome
# Submission ID: 1473945713
# Status: Accepted
# Date: December 8, 2024 at 07:54:36 PM MST

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        guard !s.isEmpty else {
            return true
        }

        let stringLowercased = s.lowercased()
        let stringWithOnlyAlphanumeric = stringLowercased.filter { $0.isLetter || $0.isNumber }
        let charsArray = Array(stringWithOnlyAlphanumeric)
        
        var left = 0
        var right = charsArray.count - 1
        
        while left < right {
            if charsArray[left] != charsArray[right] {
                return false
            }
            
            left += 1
            right -= 1
        }
        
        return true
    }
}