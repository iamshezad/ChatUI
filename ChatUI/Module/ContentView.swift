//
//  ContentView.swift
//  ChatUI
//
//  Created by Shezad Ahamed on 03/08/21.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        
        //Bottom tab
        TabView {
            
            //Chat
            ChatListView()
                .tabItem {
                    Image(systemName: "bubble.left.and.bubble.right")
                }
            
            //Calls
            CallListView()
                .tabItem {
                    Image(systemName: "phone")
                }
            
            //Contacts
            ContactsView()
                .tabItem {
                    Image(systemName: "person.2")
                }
            
            //Settings
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                }
            
        }
        .accentColor(Color("color_primary"))
    }
    
    //Tabbar customization
    init() {
        UITabBar.appearance().barTintColor = UIColor(named: "color_bg")
        UITabBar.appearance().isTranslucent = false
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}
