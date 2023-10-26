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
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard head != nil else {
            return nil
        }
        
        guard head?.next != nil else {
            return head
        }
    
        var prev: ListNode? = nil
        var current = head
        var next: ListNode? = nil
        
        while current != nil {
            next = current?.next
            current?.next = prev
            prev = current
            current = next
        }
        
        return prev
    }
}