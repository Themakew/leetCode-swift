class Solution {
    func validPalindrome(_ s: String) -> Bool {
        let chars = Array(s)
        var left = 0
        var right = chars.count - 1
        
        while left < right {
            if chars[left] != chars[right] {
                return isPalindrome(chars, left + 1, right) || isPalindrome(chars, left, right - 1)
            }
            left += 1
            right -= 1
        }
        
        return true
    }
    
    private func isPalindrome(_ chars: [Character], _ left: Int, _ right: Int) -> Bool {
        var newLeft = left
        var newRight = right
        
        while newLeft < newRight {
            if chars[newLeft] != chars[newRight] {
                return false
            }
            newLeft += 1
            newRight -= 1
        }
        
        return true
    }
}