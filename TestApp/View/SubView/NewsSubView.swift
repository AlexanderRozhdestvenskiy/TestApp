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
        HStack {
            Text("\(news.id)")
            Spacer()
            VStack(alignment: .leading) {
                Text(news.category)
                Text(news.related)
            }
        }
    }
}

struct NewsSubView_Previews: PreviewProvider {
    static var previews: some View {
        NewsSubView(news: News.example)
    }
}
