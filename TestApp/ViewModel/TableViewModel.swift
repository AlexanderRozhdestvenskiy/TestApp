//
//  TableViewModel.swift
//  TestApp
//
//  Created by Alexander Rozhdestvenskiy on 15.11.2021.
//

import Foundation
import Combine
import SwiftUI

final class TableViewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible(maximum: 160)),
                               GridItem(.flexible(maximum: 160))]
    
    @Published var table: [TableModel] = load("Data.json")
}

private func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle: \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("C")
    }
}
