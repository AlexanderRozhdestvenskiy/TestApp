//
//  URLView.swift
//  TestApp
//
//  Created by Alexander Rozhdestvenskiy on 15.11.2021.
//

import SwiftUI

struct URLView: View {
    
    var body: some View {
        NavigationView {
            WebView(url: URL(string: "https://github.com/AlexanderRozhdestvenskiy/TestApp"))
                .navigationBarHidden(true)
        }
    }
}

struct URLView_Previews: PreviewProvider {
    static var previews: some View {
        URLView()
    }
}
