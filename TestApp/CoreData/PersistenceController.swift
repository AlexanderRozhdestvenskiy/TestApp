//
//  PersistenceController.swift
//  TestApp
//
//  Created by Alexander Rozhdestvenskiy on 17.11.2021.
//

import Foundation
import CoreData

struct PersistenceController {
    
    static let shared = PersistenceController()
    
    let conteiner: NSPersistentContainer
    
    static let prewiew: PersistenceController = {
        let controller = PersistenceController(inMemory: true)
        
        for _ in 0..<10 {
            let news = News(context: controller.conteiner.viewContext)
            news.id = 1
            news.summary = "hhhhhhh"
            news.headline = "hhhhhhhh"
            news.datetime = 67
            news.url = "hhhhhh"
            news.category = "jjjjjj"
            news.image = "jjjjjj"
            news.source = "jjjjj"
            
        }
        
        return controller
    }()
    
    init(inMemory: Bool = false) {
        conteiner = NSPersistentContainer(name: "Model")
        
        if inMemory {
            conteiner.persistentStoreDescriptions.first?.url = URL(fileURLWithPath: "/dev/null")
        }
        conteiner.loadPersistentStores { (description, error) in
            if let error = error {
                fatalError("Error: \(error.localizedDescription)")
            }
        }
    }
    
    func save() {
        let context = conteiner.viewContext
        
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                print("Not Save")
            }
        }
    }
}
