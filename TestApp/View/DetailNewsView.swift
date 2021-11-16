//
//  DetailView.swift
//  TestApp
//
//  Created by Alexander Rozhdestvenskiy on 15.11.2021.
//

import SwiftUI

struct DetailNewsView: View {
    
    var news: News
    
    var body: some View {
        ZStack {
            
            Color("AppColor")
            
            ScrollView {
                VStack {
                    Text("\(news.source)")
                        .font(.largeTitle)
                        .bold()
                    
                    AsyncImage(url: URL(string: news.image)) { image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    .aspectRatio(contentMode: .fit)
                    
                    Text(news.headline)
                        .font(.title)
                    
                    Spacer(minLength: 24)
                    
                    Text(news.summary)
                        .padding()
                        .font(.callout)
                        .background(Color.white)
                        .cornerRadius(4)
                }
                .navigationBarTitle("Detail")
            .padding()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailNewsView(news: News.example)
    }
}
