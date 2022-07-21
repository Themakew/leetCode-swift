class Solution {
    func findDuplicates(_ nums: [Int]) -> [Int] {
        var auxiliarInputList = nums
        var duplicateList = [Int]()

        for index in 0..<auxiliarInputList.count {
            let indexToBeVisited = abs(auxiliarInputList[index]) - 1

            if auxiliarInputList[indexToBeVisited] < 0 {
                duplicateList.append(indexToBeVisited + 1)
            } else {
                auxiliarInputList[indexToBeVisited] = -auxiliarInputList[indexToBeVisited]   
            }
        }

        return duplicateList
    }
}