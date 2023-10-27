class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var indexesDict = [Character:Int]()
        
        s.forEach { letter in
            if let repetitionNumber = indexesDict[letter] {
                indexesDict[letter] = repetitionNumber + 1
            } else {
                indexesDict[letter] = 1
            }
        }
        
        for (index, key) in s.enumerated() {
            if (indexesDict[key] ?? 0) < 2 {
                return index
            }
        }
        
        return -1
    }
}