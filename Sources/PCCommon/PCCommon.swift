public func readLineString() -> String {
  printBeforeInput()
  return readLine()!
}

public func readLineInt() -> Int {
  printBeforeInput()
  return Int(readLineString())!
}

public func readLineAndGetInts(separetedBy separator: Character) -> [Int] {
  printBeforeInput()
  return readLineString().split(separator: separator).map { Int(String($0))! }
}

public func readLineAndGetTwoInts(separetedBy separator: Character) -> (Int, Int) {
  printBeforeInput()
  let ints = readLineAndGetInts(separetedBy: separator)
  return (ints[0], ints[1])
}

fileprivate func printBeforeInput() {
  print("Please input", terminator: ": ")
}
