final class ListNode {
    var val: Int
    var next: ListNode?

    init() {
        self.val = 0
        self.next = nil
    }

    init(_ val: Int) {
        self.val = val
        self.next = nil
    }

    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}

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