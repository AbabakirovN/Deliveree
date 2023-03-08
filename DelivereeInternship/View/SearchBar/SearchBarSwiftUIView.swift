//
//  SearchBarSwiftUIView.swift
//  DelivereeInternship
//
//  Created by Nurzhan Ababakirov on 8/3/23.
//

import SwiftUI

struct SearchBarSwiftUIView: View {
    
    @State private var textInput: String = ""
    
    var body: some View {
        VStack{
            HStack(){
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                TextField(
                    "Find restaraunt by name",
                    text: $textInput
                ).padding(.vertical,12)
                    .padding(.horizontal)
                    .background(Color.white)
                    .clipShape(Capsule())
                Spacer()
                Button(action: {
                    print("Group button")
                }, label: {
                    Image("Group")
                }).shadow(color: Color.black.opacity(0.2), radius: 10, y: 5)
            }
            .padding()
        }        
    }
}

struct SearchBarSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarSwiftUIView()
    }
}
