class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var lastZeroIndex = 0
        
        for currentIndex in 0..<nums.count {
            if nums[currentIndex] != 0 {
                let auxiliar = nums[lastZeroIndex]
                
                nums[lastZeroIndex] = nums[currentIndex]
                nums[currentIndex] = auxiliar
                lastZeroIndex+=1
            }    
        }
    }
}