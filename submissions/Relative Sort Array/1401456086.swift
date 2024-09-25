# Title: Relative Sort Array
# Submission ID: 1401456086
# Status: Accepted
# Date: September 24, 2024 at 10:20:39 PM MDT

class Solution {
    func relativeSortArray(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
        var hash = [Int: Int]()
        var resultArray = [Int]()
        var remainingArray = [Int]()

        for (index, number) in arr2.enumerated() {
            hash[number] = index
        }

        for number in arr1 {
            if let hashIndex = hash[number] {
                resultArray.append(number)
            } else {
                remainingArray.append(number)
            }
        }

        resultArray.sort { (a, b) -> Bool in
            return hash[a]! < hash[b]!
        }

        return resultArray + remainingArray.sorted()
    }
}