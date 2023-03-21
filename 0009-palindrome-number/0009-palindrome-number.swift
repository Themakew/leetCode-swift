class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let chars = Array(String(x))
        var leftIndex = 0
        var rightIndex = chars.count - 1

        for _ in 0..<(chars.count/2) {
            if chars[leftIndex] == chars[rightIndex] {
                leftIndex += 1
                rightIndex -= 1
            } else {
                return false
            }
        }
        return true
    }
}