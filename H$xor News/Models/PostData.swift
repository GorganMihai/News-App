//
//  PostData.swift
//  H$xor News
//
//  Created by Mihai Gorgan on 27.06.2022.
//

import Foundation

struct Results: Decodable {
    
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: Int {
        return Int(objectID)!
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    
}
