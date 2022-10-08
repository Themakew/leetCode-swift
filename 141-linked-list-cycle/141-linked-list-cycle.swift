/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        if head?.next == nil {
            return false
        }
        
        var slow: ListNode? = head
        var fast: ListNode? = head

        while let nextFast = fast?.next {
            fast = nextFast.next
            slow = slow?.next

            if slow === fast {
                return true
            }
        }

        return false
    }
}