//
//  LocationSwiftUIView.swift
//  DelivereeInternship
//
//  Created by Nurzhan Ababakirov on 9/3/23.
//

import SwiftUI

struct LocationSwiftUIView: View {
    
    let deliveryLocation = [
        LocationInfo(image: "Region", category: "Deliver to current location", address: "Manas ave"),
        LocationInfo(image: "Marker", category: "Deliver to different location", address: "Choose location on the map "),
        ]

    let savedAddressess = [
        LocationInfo(image: "Union", category: "Home", address: "Jukeev-Pudovkin St 43, apt #12"),
        LocationInfo(image: "Work", category: "Work", address: "Manas Ave 32, floor 7, office #703"),
        LocationInfo(image: "Hotel", category: "Hotel", address: "Frunze St 50, floor 10, room #1011"),
    ]
    
    var body: some View {
        VStack{
            Spacer()
            Spacer()
            Text("Choose delivery location")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 15)
            List {
                ForEach (deliveryLocation) { delivery in
                    VStack {
                        
                        HStack {
                            
                            Image(delivery.image)
                            
                            VStack {
                                Text(delivery.category)
                                    .font(.system(size: 16, weight: .medium))
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text(delivery.address)
                                    .font(.system(size: 12, weight: .regular))
                                    .foregroundColor(.gray)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                        }
                    }
                    .padding(.vertical, 5)
                }
            }
            .listStyle(PlainListStyle())
            
            Text("Saved Addresses")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 15)
            List {
                ForEach (savedAddressess) { saved in
                    VStack {
                        HStack {
                            Image(saved.image)
                            VStack {
                                Text(saved.category)
                                    .font(.system(size: 16, weight: .medium))
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text(saved.address)
                                    .font(.system(size: 12, weight: .regular))   .foregroundColor(.gray)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                    }.padding(.vertical, 5)
                }
            }
            .listStyle(PlainListStyle())

        }
    }
}
struct LocationSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        LocationSwiftUIView()
    }
}
