//
//  CalculatorLogic.swift
//  Calculator Layout iOS13
//
//  Created by Valentin Mille on 24/05/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    private var number: Double?
    private var intermadiateCalculation: (n1: Double, calcMethod: String)?
    
    mutating func setNumber(_ newNumber: Double) {
        self.number = newNumber
    }

    mutating func calculate(symbol: String) -> Double? {
        if let n = number {
            switch symbol {
                case "+/-":
                    return n * -1
                case "AC":
                    return 0
                case "%":
                    return n / 100
                case "=":
                    return performTwoNumberCalculation(n)
                default:
                    intermadiateCalculation = (n1: n, calcMethod: symbol)
            }
        }
        return nil
    }
    
    private func performTwoNumberCalculation(_ n2: Double) -> Double? {
        if let n1 = intermadiateCalculation?.n1, let operation = intermadiateCalculation?.calcMethod {
            switch operation {
                case "+":
                    return n1 + n2
                case "÷":
                    return n1 / n2
                case "-":
                    return n1 - n2
                case "×":
                    return n1 * n2
                default:
                    fatalError("The operation is not recognized")
            }
        }
        return nil
    }
}
