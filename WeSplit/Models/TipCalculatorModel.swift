//
//  TipCalculatorModel.swift
//  100DAYSSWIFTUIapp
//
//  Created by Emi Sanzmor on 21/06/25.
//

import Foundation

// MARK: - Model

struct TipCalculatorModel {
    let checkAmount: Double
    let numberOfPeople: Int
    let tipPercentage: Int
    
    // Calculated Properties
    
    var totalPerPerson: Double {
        let tipValue = checkAmount * Double(tipPercentage) / 100
        let grandTotal = checkAmount + tipValue
        return grandTotal / Double(numberOfPeople)
    }
    
    
    var tipValue: Double {
        
        return checkAmount * Double(tipPercentage) / 100
    }
    
    var grandTotal: Double {
        
        return checkAmount + tipValue
    }
}

// MARK: - Calculator Constants

enum TipCalculatorConstants {
    static let tipPercentages = [10, 15, 20, 25, 0]
    static let defaultTipPercentage = 20
    static let defaultNumberOfPeople = 2
    static let minPeople = 2
    static let maxPeople = 100
}

