//
//  Reference.swift
//  EuroVan Camper Handbook
//
//  Created by Mike Laursen on 9/26/18.
//  Copyright © 2018 Appamajigger. All rights reserved.
//

import Foundation

struct Reference {
    let name:String
    let url:URL
    
    init(name:String, url:URL) {
        self.name = name
        self.url = url
    }
}
