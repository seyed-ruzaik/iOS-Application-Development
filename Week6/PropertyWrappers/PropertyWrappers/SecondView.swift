//
//  SecondView.swift
//  PropertyWrappers
//
//  Created by Pubudu Mihiranga on 2023-03-01.
//

import SwiftUI

struct SecondView: View {
    
    var fruitName: String = ""
    
    var body: some View {
        Text("\(fruitName)")
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
