//
//  StockModel.swift
//  TestApp
//
//  Created by Alexander Rozhdestvenskiy on 15.11.2021.
//

import Foundation

struct StockModel: Identifiable, Decodable {
    var id: UUID
    
    var c: Double
    var h: Double
    var l: Double
    var o: Double
    var pc: Double
    var t: Int
}
