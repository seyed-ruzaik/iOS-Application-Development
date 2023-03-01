//
//  ContentView.swift
//  PropertyWrappers
//
//  Created by Pubudu Mihiranga on 2023-03-01.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id = UUID()
    let name: String
    let price: Int
}

class FruitViewModel: ObservableObject {
    @Published var fruits: [FruitModel] = []
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Apple", price: 10)
        let fruit2 = FruitModel(name: "Mango", price: 20)
        let fruit3 = FruitModel(name: "Orange", price: 30)
        let fruit4 = FruitModel(name: "Banana", price: 40)
        let fruit5 = FruitModel(name: "Watermelon", price: 50)
        
        fruits.append(fruit1)
        fruits.append(fruit2)
        fruits.append(fruit3)
        fruits.append(fruit4)
        fruits.append(fruit5)
    }
    
    func deleteFruit(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
    
    func insertFruit() {
        let fruit = FruitModel(name: "Pineapple", price: 50)
        fruits.append(fruit)
    }
}

struct ContentView: View {
    
    @ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
//    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruitViewModel.fruits) { fruit in
                    NavigationLink {
//                        SecondView(fruitViewModel: fruitViewModel, fruitName: fruit.name)
                        SecondView(fruitName: fruit.name)
                    } label: {
                        HStack {
                            Text("\(fruit.name)")
                            Spacer()
                            Text("\(fruit.price)")
                        }
                    }

                }
                .onDelete { index in
                    fruitViewModel.deleteFruit(index: index)
                }
            }
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        // insert new fruit
                        print("dev test fruitViewModel.insertFruit() called")
                        fruitViewModel.insertFruit()
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                    }

                }
            }
        }
        .environmentObject(fruitViewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
