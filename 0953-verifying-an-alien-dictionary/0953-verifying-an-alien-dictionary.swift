class Solution {
    func isSorted(dictOrder: [Character: Int], firstWord: [Character], secondWord: [Character]) -> Bool {
        for charIndex in 0..<(min(firstWord.count, secondWord.count)) {
            if dictOrder[firstWord[charIndex]] ?? 0 > dictOrder[secondWord[charIndex]] ?? 0 {
                return false
            } else if dictOrder[firstWord[charIndex]] ?? 0 < dictOrder[secondWord[charIndex]] ?? 0 {
                return true
            }
        }
        
        return (firstWord.count - secondWord.count) <= 0
    }
    
    func isAlienSorted(_ words: [String], _ order: String) -> Bool {
        guard words.count > 1 else {
            return true
        }
        
        var dictOrder = [Character: Int]()
        order.enumerated().forEach { dictOrder[$1] = $0 + 1 }
        let wordsArray = words.map { Array($0) }
        
        for wordIndex in 1..<words.count {
            if !isSorted(dictOrder: dictOrder, firstWord: wordsArray[wordIndex - 1], secondWord: wordsArray[wordIndex]) {
                return false
            }
        }

        return true
    }
}