//
//  NavigationSwiftUIView.swift
//  DelivereeInternship
//
//  Created by Nurzhan Ababakirov on 8/3/23.
//

import SwiftUI

struct NavigationSwiftUIView: View {
    
    @State private var isPopoverShown = false
    
    var body: some View {
        HStack{
            Button(action: {
                print("Menu button")
            }, label: {
                Image("Menu")
            })
            Spacer()
            
                VStack{
                    Text(" Delivering to")
                    VStack {
                        Button {
                            self.isPopoverShown.toggle()
                        } label: {
                            HStack {
                                VStack {
                                    (Text(" Manas ave  ")+Text(Image( "Chevron"))).bold() .foregroundColor(Color.black.opacity(0.9))
                                    
                                }
                            }
                            .popover(isPresented: $isPopoverShown, content: {
                              
                                LocationSwiftUIView()
                            })
                        }
                    }
                }
            Spacer()
            
            Button(action: {print("Basket button")
            }, label: {
                Image("Basket")
            })
            
        }        
    }
}

struct NavigationSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationSwiftUIView()
    }
}
