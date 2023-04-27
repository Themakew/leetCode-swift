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
    func isPalindrome(_ head: ListNode?) -> Bool {
        if head == nil {
            return false // An empty list is a palindrome
        }
        
        var slow = head
        var fast = head
        
        // Find the middle node of the list using two pointers approach
        while let _ = fast?.next, let nextFastFast = fast?.next?.next {
            slow = slow?.next
            fast = nextFastFast
        }
        
        // Reverse the second half of the list
        var previousNode: ListNode? = nil
        var currentNode = slow?.next
        
        while let node = currentNode {
            let nextNode = node.next
            node.next = previousNode
            previousNode = node
            currentNode = nextNode
        }
        
        // Compare the first half and second half of the list
        var auxNodeOne = head
        var auxNodeTwo = previousNode
        
        while let currentNodeOne = auxNodeOne, let currentNodeTwo = auxNodeTwo {
            if currentNodeOne.val != currentNodeTwo.val {
                return false
            }
            
            auxNodeOne = currentNodeOne.next
            auxNodeTwo = currentNodeTwo.next
        }
        
        return true
    }
}