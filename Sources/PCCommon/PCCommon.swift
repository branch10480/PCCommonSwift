public func readLineString(message: String? = nil) -> String {
  printBeforeInput(message: message)
  return readLine()!
}

public func readLineInt(message: String? = nil) -> Int {
  printBeforeInput(message: message)
  return Int(readLineString())!
}

public func readLineAndGetInts(separetedBy separator: Character, message: String? = nil) -> [Int] {
  return readLineString().split(separator: separator).map { Int(String($0))! }
}

public func readLineAndGetTwoInts(separetedBy separator: Character, message: String? = nil) -> (Int, Int) {
  let ints = readLineAndGetInts(separetedBy: separator)
  return (ints[0], ints[1])
}

fileprivate func printBeforeInput(message: String? = nil) {
  if let message = message {
    print(message)
  }
  print("Please input", terminator: ": ")
}
