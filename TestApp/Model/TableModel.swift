//
//  TableModel.swift
//  TestApp
//
//  Created by Alexander Rozhdestvenskiy on 15.11.2021.
//

import Foundation

struct TableModel: Identifiable, Decodable {
    var id: Int
    var systemName: String
    var name: String
}
