//
//  OnboardingView.swift
//  Fructus
//
//  Created by Alan Milke on 18/08/22.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    //MARK: - METHODS
    //MARK: - BODY    
    var body: some View {
        TabView {
            ForEach(fruits) { fruit in 
                FruitCardView(fruit: fruit)    
            }
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
