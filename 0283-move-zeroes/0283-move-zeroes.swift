class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var zerosList = [Int]()

        nums = nums.filter { number in
            if number == 0 {
                zerosList.append(0)
                return false
            }      
            
            return true
        }
        
        nums += zerosList
    }
}