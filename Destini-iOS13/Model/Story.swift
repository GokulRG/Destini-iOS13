//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    
    let title: String
    let choice1: String
    let choice2: String
    
    init(_ title: String,_ choice1: String,_ choice2: String) {
        self.title = title
        self.choice2 = choice2
        self.choice1 = choice1
    }
}
