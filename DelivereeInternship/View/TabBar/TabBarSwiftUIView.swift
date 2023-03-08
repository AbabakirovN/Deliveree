//
//  TabBarSwiftUIView.swift
//  DelivereeInternship
//
//  Created by Nurzhan Ababakirov on 9/3/23.
//

import SwiftUI

struct TabBarSwiftUIView: View {
    
    @State var selectedTab: TabInfo = .Home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        TabView (selection: $selectedTab){
            
            HomeView().tag(TabInfo.Home)
            WalletView().tag(TabInfo.Wallet)
            ChatView().tag(TabInfo.Chat)
            ProfileView().tag(TabInfo.Profile)
            
        }
        
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(.black)
                .frame(height: 75)
                .padding(10)
            
            HStack(spacing: 30) {
                ForEach(TabInfo.allCases, id: \.self) { tab in
                    Button(action: {
                        selectedTab = tab
                    }) {
                        ZStack {
                            Circle().foregroundColor(Color.clear)
                                .frame(width: 50, height: 50)
                            
                            Image(String(tab.rawValue))
                                .resizable()
                               .renderingMode(.template)
                               .aspectRatio(contentMode: .fit)
                               .frame(width: 20, height: 20)
                                .font(.system(size: 20, weight: .medium))
                                .foregroundColor(selectedTab == tab ? .white : .white)
                        }
                    }
                }
            }
            .frame(height: 75)
        }.padding(0)
        .background(Color.black.opacity(0.05).ignoresSafeArea(.all,edges:.all))
    }
}



struct TabBarSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarSwiftUIView()
    }
}



