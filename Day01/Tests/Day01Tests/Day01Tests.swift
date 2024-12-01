import Testing
@testable import Day01

private let input = """
3   4
4   3
2   5
1   3
3   9
3   3
"""

@Test func testParsing() {
    let (resultA, resultB) = parse(input)
    #expect(resultA == [3, 4, 2, 1, 3, 3])
    #expect(resultB == [4, 3, 5, 3, 9, 3])
}

@Test func testProcessA() {
    #expect(processA(parse(input)) == 11)
}

@Test func testProcessB() {
    #expect(processB(parse(input)) == 31)
}
