//
//  ViewPagerSwiftUIView.swift
//  DelivereeInternship
//
//  Created by Nurzhan Ababakirov on 8/3/23.
//

import SwiftUI

struct ViewPagerSwiftUIView: View {
    
    let dishes = [
        DishInfo(name: "Tony Roma's", image: "TonyRomas", dishType: "Ribs & Steaks\rDelivery: FREE • Minimum: $20", rating: "4.5 " ,time: "35 Mins"),
        DishInfo(name: "Momos", image: "Momos", dishType: "Japanese\rDelivery: FREE • Minimum: $10",rating: "4.5 ", time: "30 Mins"),
        DishInfo(name: "Tony Roma's", image: "TonyRomas", dishType: "Ribs & Steaks\rDelivery: FREE • Minimum: $20", rating: "4.5 " ,time: "35 Mins"),
        DishInfo(name: "Momos", image: "Momos", dishType: "Japanese\rDelivery: FREE • Minimum: $10",rating: "4.5 ", time: "30 Mins")
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: -5) {
                ForEach(dishes) { dish in
                    Button {
                        
                    } label: {
                        VStack {
                            Spacer()
                            
                            Text(dish.name)
                                .font(.system(size: 16, weight: .bold)).multilineTextAlignment(.leading)
                                .foregroundColor(Color.black.opacity(0.9))
                            
                            VStack(spacing: 0) {
                                Text("\(dish.dishType)")
                                    .font(.system(size: 10, weight: .light)).multilineTextAlignment(.leading)
                                    .foregroundColor(Color.gray.opacity(0.9))
                                
                                HStack(spacing: 2) {
                                    
                                    Image(systemName: "circle.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .foregroundColor(.gray)
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 2, height: 2, alignment: .center)
                                    
                                }
                                .frame(width: 128, alignment: .leading)
                            }
                            
                            HStack(spacing: 4) {
                                Image("Star")
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundColor(.gray)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 10, height: 10, alignment: .center)
                                
                                Text("\(dish.rating)")
                                    .font(.system(size: 12, weight: .bold))
                                    .foregroundColor(.black)
                                
                                Image("Time")
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundColor(.gray)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 10, height: 10, alignment: .center)
                                
                                Text(dish.time)
                                    .font(.system(size: 12, weight: .bold))
                                    .foregroundColor(.black)
                            }
                            .padding(.vertical, 5)
                        }
                        .frame(width: 160, height: 164)
                        .background(Color.white)
                        .cornerRadius(30)
                        .overlay(
                            Image(dish.image)
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 180, height: 180, alignment: .center)
                                .offset(y: -70)
                        )
                    }
                    .padding(.top, 60)
                }
                .padding()
            }
        }
    }
}


struct ViewPagerSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ViewPagerSwiftUIView()
    }
}
