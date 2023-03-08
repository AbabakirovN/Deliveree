//
//  TypeButtonsSwiftUIView.swift
//  DelivereeInternship
//
//  Created by Nurzhan Ababakirov on 8/3/23.
//

import SwiftUI

struct TypeButtonsSwiftUIView: View {
    var body: some View {
        
        ScrollView(.horizontal){
            HStack(spacing: 5){
                Button(action: {
                    print("Delivery button")
                }, label: {
                    Image("Delivery")
                })
                Button(action: {
                    print("Takeaway button")
                }, label: {
                    Image("Takeaway")
                })
                Button(action: {
                    print("Catering button")
                }, label: {
                    Image("Catering")
                })
                Button(action: {
                    print("Curbside button")
                }, label: {
                    Image("Curbside")
                })
                Button(action: {
                    print("Offers button")
                }, label: {
                    Image("Offers")
                })
            }
            
            .padding(5)
        }
    }
}

struct TypeButtonsSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TypeButtonsSwiftUIView()
    }
}
