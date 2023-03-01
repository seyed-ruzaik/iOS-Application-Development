//
//  SecondView.swift
//  PropertyWrappers
//
//  Created by Pubudu Mihiranga on 2023-03-01.
//

import SwiftUI

struct SecondView: View {
    
//    @StateObject var fruitViewModel: FruitViewModel
    var fruitName: String = ""
    
    var body: some View {
        NavigationStack {
            NavigationLink {
//                ThirdView(fruitViewModel: fruitViewModel)
                ThirdView()
            } label: {
                Text("\(fruitName)")
            }
            .navigationTitle("Selected Fruit")
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
//        SecondView(fruitViewModel: FruitViewModel())
        SecondView()
    }
}
