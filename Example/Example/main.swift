//
//  main.swift
//  Example
//
//  Created by branch10480 on 2021/10/16.
//

import Foundation
import PCCommon

defer {
  main()
}

// MARK: - Main
func main() {
  demo_readLineString()
  demo_readLineInt()
  demo_readLineAndGetInts()
  demo_readLineAndGetTwoInts()
}

// MARK: - Demo

private func demo_readLineString() {
  defer { printLine() }
  let value = readLineString(message: "Please input a string.")
  print(value)
}

private func demo_readLineInt() {
  defer { printLine() }
  let int = readLineInt(message: "Please input a int.")
  print(int.description)
}

private func demo_readLineAndGetInts() {
  defer { printLine() }
  let ints = readLineAndGetInts(
    separatedBy: " ",
    message: "Please input some ints. - separator: ' '"
  )
  ints.forEach { int in
    print(int.description)
  }
}

private func demo_readLineAndGetTwoInts() {
  defer { printLine() }
  let twoInts = readLineAndGetTwoInts(
    separatedBy: " ",
    message: "Please input two ints. - separator: ' '"
  )
  print(twoInts.0.description)
  print(twoInts.1.description)
}

private func printLine() {
  print("-----------------")
}
