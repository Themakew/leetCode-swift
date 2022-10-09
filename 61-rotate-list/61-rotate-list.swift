/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        if head?.next == nil {
            return head
        }

        if head == nil {
            return nil
        }

        let offset = k % count(head)

        guard offset > 0 else {
            return head
        }
        
        var fast = head
        var slow = head

        for _ in 1...offset {
            fast = fast?.next
        }

        while fast?.next != nil {
            fast = fast?.next
            slow = slow?.next
        }

        let newHead = slow?.next
        slow?.next = nil
        fast?.next = head

        return newHead
    }

    func count(_ head: ListNode?) -> Int {
        var currentNode = head
        var result = 0

        while currentNode != nil {
            currentNode = currentNode?.next
            result+=1
        }

        return result
    }
}