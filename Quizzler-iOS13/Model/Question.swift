//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Anthony Liu on 2019/12/22.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var title: String
    var answer: String
    
    init(q: String, a: String) {
        self.title = q
        self.answer = a
    }
}

