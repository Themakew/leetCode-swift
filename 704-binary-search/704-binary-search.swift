class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            var pivot = left + (right - left)/2
            
            if nums[pivot] == target {
                return pivot
            }
            
            target < nums[pivot] ? (right = pivot - 1) : (left = pivot + 1)
        }
        
        return -1
    }
}