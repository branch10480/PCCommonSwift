public func readLineString() -> String {
  readLine()!
}

public func readLineInt() -> Int {
  Int(readLineString())!
}

public func readLineAndGetInts(separetedBy separator: Character) -> [Int] {
  readLineString().split(separator: separator).map { Int(String($0))! }
}

public func readLineAndGetTwoInts(separetedBy separator: Character) -> (Int, Int) {
  let ints = readLineAndGetInts(separetedBy: separator)
  return (ints[0], ints[1])
}
