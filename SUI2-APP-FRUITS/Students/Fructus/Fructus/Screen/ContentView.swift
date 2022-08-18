//
//  ContentView.swift
//  Fructus
//
//  Created by Alan Milke on 18/08/22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Parameters
    var fruits = fruitsData
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in 
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }   
            .navigationTitle("Fruits")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
