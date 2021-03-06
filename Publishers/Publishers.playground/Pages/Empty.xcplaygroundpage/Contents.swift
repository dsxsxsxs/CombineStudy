//: [Previous](@previous)

import Combine
import Foundation
import PlaygroundSupport

var cancellables = Set<AnyCancellable>()

// Outputを出力しないですぐにComlpetion(Success)を出力する
run("Empty") {
    Empty<Int, Never>()
        .sink(receiveCompletion: { finished in
            print("receivedCompletion: \(finished)")
        }, receiveValue: { value in
            print("receivedValue: \(value)")
        }).store(in: &cancellables)
}

PlaygroundPage.current.needsIndefiniteExecution = true

//: [Next](@next)
