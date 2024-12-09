# Title: Valid Anagram
# Submission ID: 1473941168
# Status: Accepted
# Date: December 8, 2024 at 07:45:11 PM MST

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }

        var frequency = [Character: Int]()

        for char in s {
            frequency[char, default: 0] += 1
        }

        for char in t {
            guard let count = frequency[char], count > 0 else {
                return false
            }

            frequency[char] = count - 1
        }

        return true
    }
}