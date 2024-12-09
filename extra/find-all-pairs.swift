func findAllPairsWithSum(_ nums: [Int], target: Int) -> [(Int, Int)] {
    var counts: [Int: Int] = [:]
    var result: Set<(Int, Int)> = []

    for currentNumber in nums {
        let complement = target - currentNumber

        if let count = counts[complement], count > 0 {
            let pair = currentNumber < complement ? (currentNumber, complement) : (complement, currentNumber)
            result.insert(pair)
        }

        counts[currentNumber, default: 0] += 1
    }

    return Array(result)
}

// Testing
let array = [1, 2, 3, 4, 5]
let target = 6
let pairs = findAllPairsWithSum(array, target: target)
print(pairs)
