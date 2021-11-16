//
//  NewsView.swift
//  TestApp
//
//  Created by Alexander Rozhdestvenskiy on 15.11.2021.
//

import SwiftUI

struct NewsView: View {
    
    @StateObject var viewmodel: NewsViewModel
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("AppColor")

                ScrollView {
                    VStack() {
                        ForEach(viewmodel.news) { news in
                            NavigationLink(destination: DetailNewsView(news: news)) {
                                NewsSubView(news: news)
                            }
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                    }
                    .padding()
                }
            }
            .onAppear {
                viewmodel.getNews()
            }
            .navigationTitle("News")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView(viewmodel: NewsViewModel())
    }
}

