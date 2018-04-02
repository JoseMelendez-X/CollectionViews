//
//  Icon.swift
//  CollectionViews
//
//  Created by Jose Melendez on 4/2/18.
//  Copyright © 2018 Jose Melendez. All rights reserved.
//

import Foundation

struct  Icon {
    
    var name: String
    
    var price: Double
    
    var isFeatured: Bool
    
    init(name: String, price: Double, isFeatured: Bool) {
        self.name = name
        self.price = price
        self.isFeatured = isFeatured
    }
    
}
