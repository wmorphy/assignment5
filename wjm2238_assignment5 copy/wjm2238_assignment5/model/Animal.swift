//
//  Animal.swift
//  wjm2238_assignment5
//
//  Created by Will Morphy on 2/10/18.
//  Copyright © 2018 Will Morphy. All rights reserved.
//

import Foundation
import UIKit

class Animal{
    var name: String?
    var scientificName: String?
    var clas: String?
    var size: Int?
    var image: UIImage?
    
    init(_ Name: String,_ ScientificName:String,_ Class:String,_ Size:Int, _ Image:UIImage) {
    
        self.name = Name
        self.scientificName = ScientificName
        self.clas = Class
        self.size = Size
        self.image = Image
    }
}
