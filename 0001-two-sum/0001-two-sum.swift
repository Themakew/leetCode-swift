class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var complementDict: [Int: Int] = [:] // stores complements of elements
        for (i, num) in nums.enumerated() {
            let complement = target - num
            if let complementIndex = complementDict[complement] {
                return [complementIndex, i]
            }
            complementDict[num] = i
        }
        return [] // no solution found
    }
}