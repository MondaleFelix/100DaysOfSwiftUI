//
//  ContentView.swift
//  ConverterChallenge
//
//  Created by Mondale Work on 9/11/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userTemperature: Double = 0
    let temps = ["Celsius", "Fahrenheit", "Kelvin"]
    @State private var selectedTemp = "Fahrenheit"
    
    var convertedTemperature: Double {
        switch selectedTemp {
        case "Celsius":
            return (userTemperature - 32) * 5/9
        case "Fahrenheit":
            return userTemperature
        case "Kelvin":
            return (userTemperature + 459.67) * 5/9
        default:
            return 0
        }
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Enter a temperature in fahrenheit") {
                    TextField("Temperature", value: $userTemperature, format: .number)
                        .keyboardType(.decimalPad)
                }
                
                
                Section("Select a temperature") {
                    Picker("Temperatures", selection: $selectedTemp) {
                        ForEach(temps, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section("Converted Temperature") {
                    Text("\(convertedTemperature)")
                }
            }
            .navigationTitle("Temperature Converter")
        }
    }
}

#Preview {
    ContentView()
}
