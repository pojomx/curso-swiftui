//
//  ContentView.swift
//  Fructus
//
//  Created by Alan Milke on 18/08/22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Parameters
    @State private var isShowingSettings: Bool = false
    
    
    var fruits = fruitsData
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(fruits) { item in 
                    NavigationLink(destination: FruitDetailView(fruit: item)) { 
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)    
                    }
                }
            }   
            .navigationTitle("Fruits")
            .toolbar { 
                ToolbarItem(placement: .navigationBarTrailing) { 
                    Button {
                        isShowingSettings = true
                    } label: { 
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isShowingSettings) { 
                        
                    } content: { 
                        SettingsView()
                    }

                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
