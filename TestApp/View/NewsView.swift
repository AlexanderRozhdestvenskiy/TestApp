//
//  NewsView.swift
//  TestApp
//
//  Created by Alexander Rozhdestvenskiy on 15.11.2021.
//

import SwiftUI

struct NewsView: View {
    
    @StateObject var viewmodel = NewsViewModel()
    @Environment(\.managedObjectContext) var context
    
    @FetchRequest(entity: News.entity(),
                  sortDescriptors: [NSSortDescriptor(keyPath: \News.id,
                                                     ascending: true)]) var results: FetchedResults<News>
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("AppColor")
                
                if results.isEmpty {
                    
                    if viewmodel.news.isEmpty {
                        ProgressView()
                            .onAppear {
                                viewmodel.getNews(context: context)
                            }
                    } else {
                        
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
                } else {
                    ScrollView {
                        VStack() {
                            ForEach(results) { news in
                                NavigationLink(destination: DetailNewsView(fetchedData: news)) {
                                    NewsSubView(fetchedData: news)
                                }
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("News")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        do {
                            results.forEach { (news) in
                                context.delete(news)
                            }
                            try context.save()
                        } catch {
                            print(error.localizedDescription)
                        }
                        viewmodel.news.removeAll()
                    }, label: {
                        Image(systemName: "arrow.clockwise")
                    })
                }
            }
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView(viewmodel: NewsViewModel())
    }
}

