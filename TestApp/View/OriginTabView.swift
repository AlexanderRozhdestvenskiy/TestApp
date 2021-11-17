//
//  OriginTabView.swift.swift
//  TestApp
//
//  Created by Alexander Rozhdestvenskiy on 15.11.2021.
//

import SwiftUI

struct OriginTabView: View {
    
    @State private var selection: Tab = .news
    
    enum Tab {
        case news
        case url
        case json
        case account
    }
    
    var body: some View {
        
        TabView(selection: $selection) {
            
            NewsView(viewmodel: NewsViewModel())
                .tabItem {
                    Label("News", systemImage: "newspaper")
                }
                .tag(Tab.news)
            
            URLView()
                .tabItem {
                    Label("Web", systemImage: "network")
                }
                .tag(Tab.url)
            
            TableView()
                .tabItem {
                    Label("Tab", systemImage: "tablecells")
                }
                .tag(Tab.json)
            
            MonitorView()
                .tabItem {
                    Label("Monitor", systemImage: "wifi.square")
                }
                .tag(Tab.account)

        }
    }
}

struct OriginTabView_Previews: PreviewProvider {
    static var previews: some View {
        OriginTabView()
    }
}
