//
//  StartButtonView.swift
//  Fructus
//
//  Created by Alan Milke on 18/08/22.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
        Button { 
            print("Exit the onboarding")
        } label: { 
            HStack (spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        } //: BUTTON
        .accentColor(Color.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
