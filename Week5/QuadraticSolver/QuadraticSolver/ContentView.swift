//
//  ContentView.swift
//  QuadraticSolver
//
//  Created by Pubudu Mihiranga on 2023-02-24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var firstTerm = ""
    @State private var secondTerm = ""
    @State private var thirdTerm = ""
    
    @State private var x1 = ""
    @State private var x2 = ""
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Quadratic Solver")
                    .font(.title)
                
                Text("The quadratic form is:")
                
                Image("quadraticForm")
                    .resizable()
                    .scaledToFit()
                
                VStack {
                    Label("Enter the first term", systemImage: "a.circle.fill")
                    
                    TextField("", text: $firstTerm)
                        .textFieldStyle(.roundedBorder)
                        .multilineTextAlignment(.center)
                    
                    Label("Enter the second term", systemImage: "b.circle.fill")
                    
                    TextField("", text: $secondTerm)
                        .textFieldStyle(.roundedBorder)
                        .multilineTextAlignment(.center)
                    
                    Label("Enter the third term", systemImage: "c.circle.fill")
                    
                    TextField("", text: $thirdTerm)
                        .textFieldStyle(.roundedBorder)
                        .multilineTextAlignment(.center)
                }
                
                Button {
                    solveForX()
                } label: {
                    Text("Solve for X")
                }
                
                Text("x = \(x1), x = \(x2)")
                
                Spacer()
            }
            .padding()
        }
    }
    
    func solveForX() {
        guard let firstTerm = Double(firstTerm),
                let secondTerm = Double(secondTerm),
                let thridTerm = Double(thirdTerm) else { return }
        
        // https://stackoverflow.com/questions/35395111/quadratic-formula-in-swift
        
        let bSquared = secondTerm * secondTerm
        let discriminant = bSquared - (4 * firstTerm * thridTerm)
        let discrimimantAbsSqrt = sqrt(fabs(discriminant))
        
        let topFormula1 = -secondTerm + discrimimantAbsSqrt
        let topFormula2 = -secondTerm - discrimimantAbsSqrt
        
        let bottomFormula = 2 * firstTerm
        
        let totalX1 = topFormula1 / bottomFormula
        let totalX2 = topFormula2 / bottomFormula
        
        x1 = String(format: "%.2f", totalX1)
        x2 = String(format: "%.2f", totalX2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
