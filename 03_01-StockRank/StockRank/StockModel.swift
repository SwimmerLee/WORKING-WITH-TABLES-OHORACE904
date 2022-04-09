//
//  StockModel.swift
//  StockRank
//
//  Created by joonwon lee on 2022/04/19.
//

import Foundation

struct StockModel {
    let rank: Int
    let imageName: String
    let name: String
    let price: Int
    let diff: Double
}

extension StockModel {
    static let list: [StockModel] = [
  