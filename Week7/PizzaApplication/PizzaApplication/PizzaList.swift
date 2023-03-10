//
//  PizzaList.swift
//  PizzaApplication
//
//  Created by Pubudu Mihiranga on 2023-03-01.
//

import SwiftUI

struct PizzaList: View {
    
    @State private var selectedIndex = 0
    @State private var isSheetShowing = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Picker("Pizza", selection: $selectedIndex) {
                    Text("All").tag(0)
                    Text("Meat").tag(1)
                    Text("Veggie").tag(2)
                }
                .pickerStyle(.segmented)
                
                Text("Pizza List")
                
                Spacer()
            }
            .toolbar {
                ToolbarItem {
                    Button {
                        isSheetShowing.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $isSheetShowing) {
                AddNewPizza()
            }
        }
    }
}

struct PizzaList_Previews: PreviewProvider {
    static var previews: some View {
        PizzaList()
    }
}
