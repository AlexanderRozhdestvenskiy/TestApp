//
//  NewsViewModel.swift
//  TestApp
//
//  Created by Alexander Rozhdestvenskiy on 15.11.2021.
//

import SwiftUI
import Combine

final class NewsViewModel: ObservableObject {
    
    @Published var news: [News] = []
    
    func getNews() {
        
        let token = "c6617h2ad3id7qljgfq0"

        guard let url = URL(string: "https://finnhub.io/api/v1/news?category=general&token=\(token)") else { fatalError("URL") }
        
        let urlRequest = URLRequest(url: url)
        
        let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, reponce, error) in
            if let error = error {
                print("Request Error", error)
                return
            }
            
            guard let reponce = reponce as? HTTPURLResponse else {
                return
            }
            
            if reponce.statusCode == 200 {
                guard let data = data else { return }
                DispatchQueue.main.async {
                    do {
                        let decodeNews = try JSONDecoder().decode([News].self, from: data)
                        self.news = decodeNews
                    } catch let error {
                        print("Error Decoding", error)
                    }
                }
            }
        }
        dataTask.resume()
    }
}
