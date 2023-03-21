class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxLength = 0, start = 0
        var charIndexMap = [Character: Int]()
        let chars = Array(s)

        for i in 0..<chars.count {
            if let index = charIndexMap[chars[i]], index >= start {
                start = index + 1
            }
            maxLength = max(maxLength, i - start + 1)
            charIndexMap[chars[i]] = i
        }
        return maxLength
    }
}