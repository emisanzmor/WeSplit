//
//  ContentView.swift
//  WeSplit
//
//  Created by Emi Sanzmor on 15/06/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = TipCalculatorViewModel()
    
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            ZStack {
                backgroundView
                
                Form {
                    checkAmountSection
                    numberOfPeopleSection
                    tipPercentageSection
                    spacerSection
                    totalSection
                }
                .scrollContentBackground(.hidden)
                .navigationTitle("WeSplit")
                .scrollDisabled(true)
                
                resetButtonView
            }
        }
        .preferredColorScheme(.dark)
    }
}



private extension ContentView {
    
    var backgroundView: some View {
        Color.white.opacity(0.1)
            .ignoresSafeArea()
    }
    
    var checkAmountSection: some View {
        Section(header: Text("Check Amount")) {
            TextField(
                "Amount",
                value: $viewModel.checkAmount,
                format: .currency(code: Locale.current.currency?.identifier ?? "USD")
            )
            .keyboardType(.decimalPad)
            .customPickerStyle()
        }
    }
    
    var numberOfPeopleSection: some View {
        Section {
            Picker("Number of People", selection: $viewModel.numberOfPeople) {
                ForEach(viewModel.peopleRange, id: \.self) { number in
                    Text("\(number) people")
                }
            }
            .pickerStyle(.navigationLink)
            .customPickerStyle()
        }
    }
    
    var tipPercentageSection: some View {
        Section(header: Text("Tip Percentage")) {
            Picker("Tip percentage", selection: $viewModel.tipPercentage) {
                ForEach(viewModel.availablePercentages, id: \.self) { percentage in
                    Text("\(percentage)%")
                }
            }
            .pickerStyle(.segmented)
        }
    }
    
    var spacerSection: some View {
        Section(footer: Spacer().frame(height: 100)) {
            EmptyView()
        }
    }
    
    var totalSection: some View {
        Section(header: Text("Total per person")) {
            VStack(spacing: 8) {
                // Total Per Person
                Text(
                    viewModel.model.totalPerPerson,
                    format: .currency(code: Locale.current.currency?.identifier ?? "USD")
                )
                .font(.title)
                .bold()
                
                // Additional Information (Tip & Total)
                
                
                    HStack {
                        Text("Tip: \(viewModel.model.tipValue, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))")
                        Text("Total: \(viewModel.model.grandTotal, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))")
                    }
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .padding(.top, 6)
                
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .customPickerStyle()
        }
    }
    
    var resetButtonView: some View {
        HStack {
            Button("Reset") {
                viewModel.reset()
            }
            .buttonStyle(.bordered)
            .foregroundColor(Color.white.opacity(0.5))
            .font(.callout)
            .padding(.top, 20).padding(.bottom, 20)
        }
    }
}

// MARK: - Preview
#Preview {
    ContentView()
}

