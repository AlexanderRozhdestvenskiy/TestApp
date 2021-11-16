//
//  AccountView.swift
//  TestApp
//
//  Created by Alexander Rozhdestvenskiy on 15.11.2021.
//

import SwiftUI

struct MonitorView: View {
    
    @ObservedObject var monitor = NetworkMonitor()
    
    var body: some View {
        ZStack {
            
            Color("AppColor")
            
            VStack {
                Image(systemName: monitor.isConnected ? "wifi" : "wifi.slash")
                    .font(Font.system(size: 128))
                Text(monitor.isConnected ? "Connected!" : "Not connected!")
            }
        }
        .navigationBarTitle("Connect")
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        MonitorView()
    }
}
