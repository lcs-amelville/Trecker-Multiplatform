//
//  Tip.swift
//  Trecker Multiplatform
//
//  Created by Melville, Aidan on 2021-01-26.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
    
}
