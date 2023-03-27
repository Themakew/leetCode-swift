class Solution {
    func longestPalindrome(_ s: String) -> Int {
        var charCount = [Character: Int]()
        var maxLength = 0

        for char in s {
            charCount[char, default: 0] += 1
        }

        for (_, count) in charCount {
            maxLength += count / 2 * 2

            if maxLength % 2 == 0 && count % 2 == 1 {
                maxLength += 1
            }
        }

        return maxLength
    }
}