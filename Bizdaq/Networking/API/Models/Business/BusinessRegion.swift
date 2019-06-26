//
//  BusinessRegion.swift
//  Bizdaq
//
//  Created by Joseph Lunn on 23/07/2018.
//  Copyright © 2018 Dreamr. All rights reserved.
//

import Foundation

struct BusinessRegion : Codable {
    
    // MARK: - Properties
    let id: Int?
    let name: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
    }
    
    // MARK: - Lifecycle
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
    }
}
