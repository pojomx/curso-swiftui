//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Alan Milke on 22/08/22.
//

import SwiftUI

struct SettingsRowView: View {
    
    var nameLabel: String
    var contentLabel: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 4)
        
            HStack(alignment: .center, spacing: 10) {
                Text(nameLabel)
                    .foregroundColor(Color.gray)
                Spacer()
                if let contentLabel = contentLabel {
                    Text(contentLabel)
                } else if 
                    let linkLabel = linkLabel, 
                        let linkDestination = linkDestination, 
                        let destination = URL(string: "https://\(linkDestination)") 
                {
                    Link(linkLabel, destination:destination) 
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(nameLabel: "Empty Space")
            .previewLayout(.sizeThatFits)
            .padding()
        
        SettingsRowView(nameLabel: "Empty Space")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
        
        SettingsRowView(nameLabel: "Developer", contentLabel: "Dev Name")
            .previewLayout(.sizeThatFits)
            .padding()
        
        SettingsRowView(nameLabel: "Developer", contentLabel: "Dev Name")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
        
        SettingsRowView(nameLabel: "WebPage", linkLabel: "Google", linkDestination: "www.google.com")
            .previewLayout(.sizeThatFits)
            .padding()
        
        SettingsRowView(nameLabel: "WebPage", linkLabel: "Google", linkDestination: "www.google.com")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
        
    }
}
