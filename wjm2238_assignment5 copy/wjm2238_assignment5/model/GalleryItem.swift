//
//  GalleryItem.swift
//  wjm2238_assignment5
//
//  Created by Will Morphy on 3/10/18.
//  Copyright © 2018 Will Morphy. All rights reserved.
//

import Foundation
import UIKit

class GalleryItem{
    var name:String
    var animalComment:String
    var animalImage:UIImage
    
    init(_ animalImage:String,_ animalComment:String){
        self.animalComment = animalComment
        self.animalImage = UIImage(named: animalImage)!
        self.name = animalImage
    }
//    Create a class, GalleryItem to hold the gallery item's image and label. You should load this data from a custom plist, which you can create by selecting New -> File -> iOS -> Resource -> Property List. To store this information in a plist, make the root of type Array, then include items of type Dictionary. The item's dictionary key-value pair will be the name of the image (included in the Assets.xcassets folder) and an associated caption of your choosing.
//
    
}
