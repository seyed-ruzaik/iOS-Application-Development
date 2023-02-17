//
//  ContentView.swift
//  BMI Calculator
//
//  Created by Pubudu Mihiranga on 2023-02-10.
//

import SwiftUI

struct ContentView: View {
    
    // textfields
    @State private var weightTextField: String = ""
    @State private var heightTextField: String = ""
    @State private var bmi: String = "0.0"
    
    // display alert
    @State private var showAlert: Bool = false
    
    // alert properties
    @State private var alertTitle: String = ""
    @State private var alertMsg: String = ""
    @State private var alertBtnTitle: String = ""
    
    // sliders
    @State private var weightSlider: Double = 1
    @State private var heightSlider: Double = 1
    
    var body: some View {
        ZStack {
            Color.cyan
                .ignoresSafeArea()
            
            VStack(spacing: 30.0) {
                Text("BMI Calculator")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                HStack(spacing: 20.0) {
//                    Spacer()
                    
                    Text("Weight")
                        .frame(width: 100, height: 50, alignment: .leading)
                    
                    TextField("Enter your weight", text: $weightTextField)
                    
//                    Spacer()
                }
                
                Slider(value: $weightSlider, in: 1...300) { _ in
                    weightTextField = String(format: "%.2f", weightSlider)
                }
                
                HStack(spacing: 20.0) {
                    Text("Height")
                        .frame(width: 100, height: 50, alignment: .leading)
                    
                    TextField("Enter your height", text: $heightTextField)
                }
                
                Slider(value: $heightSlider, in: 1...2.5) { _ in
                    heightTextField = String(format: "%.2f", heightSlider)
                }
                
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
                        alertTitle = "Error"
                        alertMsg = "Invalid Inputs"
                        alertBtnTitle = "Ok"
                        showAlert = true
                        return
                    }
                    
                    let bmi = weight / pow(height, 2)
                    self.bmi = String(format: "%.2f", bmi)
                    
                    if bmi > 30 {
                        alertMsg = "Your BMI value is \(self.bmi) You are considered to be obese."
                    } else if bmi > 25 {
                        alertMsg = "Your BMI value is \(self.bmi) You are considered to be overweight."
                    } else {
                        alertMsg = "Your BMI value is \(self.bmi) You are healthy."
                    }
                    
                    alertTitle = "Your BMI"
                    alertBtnTitle = "Got it"
                    showAlert = true
                } label: {
                    // Label
                    Text("Calculate BMI")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(20)
                }.alert(isPresented: $showAlert) {
                    Alert(title: Text(alertTitle),
                          message: Text(alertMsg),
                          dismissButton: .default(Text(alertBtnTitle)))
                }
                
                Text("Your BMI: \(bmi)")
                    .font(.title2)
                    .fontWeight(.heavy)
                
                Spacer()
            }
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let textFiledInUIKit = UITextView()
//textFiledInUIKit.text
