//
//  PostModel.swift
//  API_Structure
//
//  Created by Jay Khodiyar on 12/07/24.
//

import Foundation
struct Post: Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
