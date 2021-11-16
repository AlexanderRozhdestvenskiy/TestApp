//
//  NewsSubView.swift
//  TestApp
//
//  Created by Alexander Rozhdestvenskiy on 15.11.2021.
//

import SwiftUI

struct NewsSubView: View {
    
    var news: News
    
    var body: some View {
        VStack {
            Text("\(news.source)")
                .font(.title2)
                .bold()
            
            Divider()
            
            Text(news.headline)
                .multilineTextAlignment(.leading)
                .foregroundColor(.black)
        }
    }
}

struct NewsSubView_Previews: PreviewProvider {
    static var previews: some View {
        NewsSubView(news: News.example)
    }
}
