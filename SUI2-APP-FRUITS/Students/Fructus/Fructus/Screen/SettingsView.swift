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
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                VStack(spacing: 20) {
                    
                    // MARK: SECTION 1
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
                    
                    // MARK: SECTION 2
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        Text("If you wish you can restart the application by toggle the switch in this box. That way it starts the onboarding text process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    
                    // MARK: SECTION 3
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(nameLabel: "Developer", contentLabel: "Alan M.")
                        SettingsRowView(nameLabel: "Designer", contentLabel: "Robert Petras")
                        SettingsRowView(nameLabel: "Compatibility", contentLabel: "iOS 14.0+")
                        SettingsRowView(nameLabel: "Website", linkLabel: "pojoclan.com", linkDestination: "www.pojoclan.com")
                        SettingsRowView(nameLabel: "Twitter", linkLabel: "@pojomx", linkDestination: "www.twitter.com/pojomx")
                        SettingsRowView(nameLabel: "SwiftUI", contentLabel: "3.0")
                        SettingsRowView(nameLabel: "Version", contentLabel: "1.0")
                    }
                    
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
