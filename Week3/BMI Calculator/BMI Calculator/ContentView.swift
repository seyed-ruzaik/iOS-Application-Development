//
//  ContentView.swift
//  BMI Calculator
//
//  Created by Pubudu Mihiranga on 2023-02-10.
//

import SwiftUI

struct ContentView: View {
    
    @State private var weightTextField: String = ""
    @State private var heightTextField: String = ""
    @State private var bmi: String = "0.0"
    
    var body: some View {
        VStack {
            Text("BMI Calculator")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("Weight")
            
            TextField("Enter your weight", text: $weightTextField)
            
            Text("Height")
            
            TextField("Enter your height", text: $heightTextField)
            
            Button {
//                let weight = Double(weightTextField)!
//                let height = Double(heightTextField)!
                
//                if let weight = Double(weightTextField),
//                      let height = Double(heightTextField)  {
//                    let bmi = weight / pow(height, 2)
//                    print(bmi)
//                } else {
//                    print("Invalid Inputs!")
//                }
                
                guard let weight = Double(weightTextField),
                      let height = Double(heightTextField) else {
                    print("Invalid Inputs!")
                    return
                }
                
                let bmi = weight / pow(height, 2)
                self.bmi = String(bmi)
            } label: {
                // Label
                Text("Calculate BMI")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(20)
            }
            
            Text("Your BMI: \(bmi)")
                .font(.title2)
                .fontWeight(.heavy)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let textFiledInUIKit = UITextView()
//textFiledInUIKit.text
