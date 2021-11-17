//
//  NewsViewModel.swift
//  TestApp
//
//  Created by Alexander Rozhdestvenskiy on 15.11.2021.
//

import SwiftUI
import CoreData

final class NewsViewModel: ObservableObject {
    
    @Published var news: [NewsModel] = []
    
    func saveData(context: NSManagedObjectContext) {
        news.forEach { (data) in
            let entity = News(context: context)
            
            entity.datetime = Int64(data.datetime)
            entity.headline = data.headline
            entity.summary = data.summary
            entity.id = Int64(data.id)
            entity.category = data.category
            entity.url = data.url
            entity.source = data.source
            entity.image = data.image
            entity.ralated = data.related
        }
        
        do {
            try context.save()
            print("Success")
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func getNews(context: NSManagedObjectContext) {
        
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
                        let decodeNews = try JSONDecoder().decode([NewsModel].self, from: data)
                        self.news = decodeNews
                        self.saveData(context: context)
                    } catch let error {
                        print("Error Decoding", error)
                    }
                }
            }
        }
        dataTask.resume()
    }
}
