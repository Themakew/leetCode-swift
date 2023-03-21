class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 { return false } // Negative numbers cannot be palindromes

        var number = x
        var reversed = 0

        while number != 0 {
            let digit = number % 10
            reversed = reversed * 10 + digit
            number /= 10
        }

        return x == reversed
    }
}