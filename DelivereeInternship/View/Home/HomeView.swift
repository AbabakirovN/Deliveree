//
//  HomeView.swift
//  DelivereeInternship
//
//  Created by Nurzhan Ababakirov on 9/3/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 0){
            NavigationSwiftUIView()
            TypeButtonsSwiftUIView()
            Text(" 56 stores open").frame(maxWidth: .infinity, alignment: .leading).font(.system(size: 16, weight: .medium))
            SearchBarSwiftUIView()
            ViewPagerSwiftUIView()
            ListSwiftUIView()
           
        }
        .background(Color.black.opacity(0.05).ignoresSafeArea(.all,edges:.all))
        .padding(5)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
