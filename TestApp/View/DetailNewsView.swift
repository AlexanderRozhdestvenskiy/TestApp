//
//  DetailView.swift
//  TestApp
//
//  Created by Alexander Rozhdestvenskiy on 15.11.2021.
//

import SwiftUI

struct DetailNewsView: View {
    
    var news: NewsModel?
    var fetchedData: News?
    
    var body: some View {
        ZStack {
            
            Color("AppColor")
            
            ScrollView {
                VStack {
                    Text(news == nil ? fetchedData!.source! : news!.source)
                        .font(.largeTitle)
                        .bold()
                    
                    AsyncImage(url: URL(string: news == nil ? fetchedData!.image! : news!.image)) { image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    .aspectRatio(contentMode: .fit)
                    
                    VStack {
                        Text(news == nil ? fetchedData!.headline! : news!.headline)
                            .bold()
                        
                        Divider()
                        
                        Text(news == nil ? fetchedData!.summary! : news!.summary)
                    }
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
        DetailNewsView(news: NewsModel.example)
    }
}
