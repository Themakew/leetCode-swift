class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()

        for char in s {
            switch char {
            case "{", "(", "[":
                stack.append(char)
            case "}":
                if (stack.isEmpty || (stack.last != "{")) {
                    return false
                }
                stack.popLast()
            case ")":
                if (stack.isEmpty || (stack.last != "(")) {
                    return false
                }
                stack.popLast()
            case "]":
                if (stack.isEmpty || (stack.last != "[")) {
                    return false
                }
                stack.popLast()
            default:
                break
            }
        }

        return stack.isEmpty
    }
}