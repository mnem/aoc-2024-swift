import Foundation

func parse(_ input: String) -> ([Int], [Int]) {
    var a = [Int]()
    var b = [Int]()
    
    for line in input.components(separatedBy: .newlines) {
        let numbers = line
            .components(separatedBy: .whitespaces)
            .compactMap(Int.init)
        guard numbers.count == 2 else { continue }
        a.append(numbers[0])
        b.append(numbers[1])
    }
    
    return (a, b)
}

func processA(_ input: ([Int], [Int])) -> Int {
    zip(
        input.0.sorted(),
        input.1.sorted()
    )
    .map { abs($0 - $1) }
    .reduce(0, +)
}

func processB(_ input: ([Int], [Int])) -> Int {
    var counts = [Int: Int]()
    input.1.forEach { counts[$0, default: 0] += 1 }
    
    return input.0
        .map { $0 * (counts[$0] ?? 0) }
        .reduce(0, +)
}

public func run() {
    let input = parse(Input)
    print("Day 01 A: \(processA(input))")
    print("Day 01 B: \(processB(input))")
}
