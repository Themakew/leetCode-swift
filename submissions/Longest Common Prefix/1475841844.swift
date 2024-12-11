# Title: Longest Common Prefix
# Submission ID: 1475841844
# Status: Accepted
# Date: December 10, 2024 at 10:30:06 PM MST

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty { 
            return "" 
        }
        
        if strs.count == 1 { 
            return strs[0] 
        }

        var output = ""
        for (char1, char2) in zip(strs.min() ?? "", strs.max() ?? "") {
            if char1 == char2 {
                output += String(char1)
            } else {
                break
            }
        }
        return output
    }
}