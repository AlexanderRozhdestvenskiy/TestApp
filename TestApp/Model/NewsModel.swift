//
//  NewsModel.swift
//  TestApp
//
//  Created by Alexander Rozhdestvenskiy on 15.11.2021.
//

import Foundation

struct News: Identifiable, Decodable {
    var category: String
    var datetime: Int
    var headline: String
    var id: Int
    var image: String
    var related: String
    var source: String
    var summary: String
    var url: String
}
