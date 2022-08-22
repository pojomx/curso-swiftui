//
//  SettingsView.swift
//  Fructus
//
//  Created by Alan Milke on 20/08/22.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: Properties
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                VStack(spacing: 20) {
                    
                    // MARK: SECTION 1
                    ExtractedView()
                    
                    // MARK: SECTION 2
                    
                    // MARK: SECTION 3
                    
                } //: VStack
                .navigationTitle(Text("Settings"))
                .navigationBarTitleDisplayMode(.large)
                .toolbar { 
                    ToolbarItem(placement: .navigationBarTrailing) { 
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: { 
                            Image(systemName: "xmark")
                        }
                    }
                }
                .padding()
            } //: Scroll
        }//: Navigation
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}

struct ExtractedView: View {
    var body: some View {
        GroupBox(
            label:
                SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
        ) {
            Divider()
                .padding(.vertical, 4)
            HStack(alignment: .center, spacing: 10) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .cornerRadius(9)
                
                Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources ofmany essential nutrients, including potassium, dietary fiber, vitamins, and much more. ")
                    .font(.footnote)
            }
            
        }
    }
}
