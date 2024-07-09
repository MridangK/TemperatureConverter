//
//  ContentView.swift
//  TemperatureConverter
//
//  Created by Mridang Kejriwal on 7/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var Temperature=0.0
    @State private var units = ["C","F"]
    @State private var selectedUnit="C"
    
    var convertedTemperature : Double{
        
        if(selectedUnit=="C"){
            return (Temperature * 9/5) + 32
        } else {
            return (Temperature - 32) * 5/9
            }
        }
    var body: some View {
        NavigationStack{
            Form{
                Section("Choose units"){
                    Picker("Choose Units",selection: $selectedUnit){
                        ForEach(units,id: \.self){
                            Text($0)
                        }
                    }.pickerStyle(.segmented)
                }
                Text("Enter the Temperature")
                TextField("Enter Temperature",value: $Temperature,format: .number).keyboardType(.decimalPad)
                Section{
                    
                    Text("Converted Temperature")
                    Text(convertedTemperature,format: .number)
                     
                    
                }
              
                
                
            }
            
            
            
        }
        
    }
}

#Preview {
    ContentView()
}
