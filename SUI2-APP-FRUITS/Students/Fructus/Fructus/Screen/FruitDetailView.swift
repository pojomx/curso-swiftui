//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Alan Milke on 18/08/22.
//

import SwiftUI

struct FruitDetailView: View {
    
    var fruit: Fruit
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .center, spacing: 20) {
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) { 
                        
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        // NUTRIENTS
                        
                        // SUBHEAD
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    }//VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                    
                } //: VStack
                .navigationBarTitleDisplayMode(.inline)
                .navigationTitle(fruit.title)
                .navigationBarHidden(true)
            } //: Scroll
            .edgesIgnoringSafeArea(.top)
        }// : Navigation
        
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FruitDetailView(fruit: fruitsData[0])
                .previewInterfaceOrientation(.portrait)
        }
    }
}
