/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var left = 1
        var right = n
        
        while left < right {
            let pivot = (left + right)/2
            
            if isBadVersion(pivot) {
                right = pivot
            } else {
                left = pivot + 1
            }
        }
        
        return left
    }
}