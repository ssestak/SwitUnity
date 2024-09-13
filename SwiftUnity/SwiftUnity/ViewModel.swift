//
//  ViewModel.swift
//  SwiftUnity
//
//  Created by Simon Sestak on 23/08/2024.
//

import Foundation

class ViewModel: NSObject, ObservableObject, NativeCallsProtocol {
    @Published var number: Int = 0

    override init() {
        super.init()

        NSClassFromString("FrameworkLibAPI")?.registerAPIforNativeCalls(self)
    }

    static var shared: ViewModel = ViewModel() 

    func sendMessage(toMobileApp phrase: String) {
        print(phrase)
        do {
            let regex = try NSRegularExpression(pattern: "\\d+")
            let results = regex.matches(in: phrase,
                                        range: NSRange(phrase.startIndex..., in: phrase))
            let mappedResults = results.map {
                String(phrase[Range($0.range, in: phrase)!])
            }
            if let firstNumberString = mappedResults.first, let firstNumber = Int(firstNumberString) {
                self.number = firstNumber
                print(number)
            }
        }
        catch let error {
            print("invalid regex: \(error.localizedDescription)")
        }
    }
}
