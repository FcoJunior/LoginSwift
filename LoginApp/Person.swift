//
//  Person.swift
//  LoginApp
//
//  Created by Prolins on 30/05/16.
//  Copyright © 2016 Prolins. All rights reserved.
//

import UIKit

class Person: NSObject {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}
