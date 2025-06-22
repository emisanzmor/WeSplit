//
//  TipCalculatorViewModel.swift
//  100DAYSSWIFTUIapp
//
//  Created by Emi Sanzmor on 21/06/25.
//

import Foundation
import SwiftUI

// MARK: - ViewModel
class TipCalculatorViewModel: ObservableObject {
    
    // Published Properties
    @AppStorage("checkAmount") var checkAmount: Double = 0.0
    @AppStorage("numberOfPeople") var numberOfPeople = TipCalculatorConstants.defaultNumberOfPeople
    @AppStorage("tipPercentage") var tipPercentage = TipCalculatorConstants.defaultTipPercentage
    
    // MARK: - Computed Properties
    
    // Creates a Model with current values
    var model: TipCalculatorModel {
        
        TipCalculatorModel(checkAmount: checkAmount, numberOfPeople: numberOfPeople, tipPercentage: tipPercentage)
        
    }
    
    // Available Percentages Array
    var availablePercentages: [Int] {
        return TipCalculatorConstants.tipPercentages
    }
    
    // People Range for Picker
    var peopleRange: Range<Int> {
        return TipCalculatorConstants.minPeople..<TipCalculatorConstants.maxPeople
    }
    
    // MARK: - Actions
    
    // Reset Values
    func reset() {
        checkAmount = 0.0
        numberOfPeople = TipCalculatorConstants.defaultNumberOfPeople
        tipPercentage = TipCalculatorConstants.defaultTipPercentage
    }
}
