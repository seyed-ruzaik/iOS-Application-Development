//
//  ContentView.swift
//  EnviromentPropertyWrapper
//
//  Created by Pubudu Mihiranga on 2023-03-01.
//

import SwiftUI

struct ContentView: View {
    
    // https://developer.apple.com/documentation/swiftui/environmentvalues
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack {
            Text("Hello, World!")
                .font(.title)
                .bold()
                .foregroundColor(colorScheme == .dark ? .red : .green)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
