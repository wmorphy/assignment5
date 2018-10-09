//
//  GalleryUICollectionController.swift
//  wjm2238_assignment5
//
//  Created by Will Morphy on 3/10/18.
//  Copyright © 2018 Will Morphy. All rights reserved.
//

import Foundation
import UIKit

class GalleryUICollectionController: UICollectionViewController{
    var animalPhotoArray:[GalleryItem] = []
    var animalName:String = ""
    
    @IBOutlet weak var NameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialisePhotoArray()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
   
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> CustomCollectionViewCell{
        
        let identifier = "CustomCollectionViewCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! CustomCollectionViewCell
        let current = indexPath.row
        
        //starting the list at the appropriate point.
        if (animalName.contains("Cat")){
                return setCell(cell: cell, current: current)
        }
        else if (animalName.contains("Dog")){
                return setCell(cell: cell, current: current+3)
        }
        else if (animalName.contains("Croc")){
            return setCell(cell: cell, current: current+6)
        }
        else {
            return setCell(cell: cell, current: current+9)
        }

    }
    
    override func collectionView(_ collectionView: UICollectionView,
                                 viewForSupplementaryElementOfKind kind: String,
                                 at indexPath: IndexPath) -> UICollectionReusableView {
        //1
        switch kind {
        //2
        case UICollectionElementKindSectionHeader:
            
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind,withReuseIdentifier: "HeaderCollectionReusableView",for: indexPath) as! HeaderCollectionReusableView
            
            headerView.collectionHeaderLabel.text = animalName
            return headerView
            
        case UICollectionElementKindSectionFooter:

            let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind,withReuseIdentifier: "FooterCollectionReusableView",for: indexPath) as! FooterCollectionReusableView
            
            footerView.collectionFooterLabel.text = animalName
            return footerView
            
        default:
            //4
            assert(false, "Unexpected element kind")
        }
        
    }

    
    //Get Data from Plist
    private func initialisePhotoArray(){
        let inputFile = Bundle.main.path(forResource: "AnimalPhotoComments", ofType:"plist")
        let inputArray = NSArray(contentsOfFile: inputFile!)
        for input in inputArray as! [Dictionary<String, String>] {
            for (key, value) in input {
                animalPhotoArray.append(GalleryItem(key,value))
            }
        }
    }
    
    func setCell(cell:CustomCollectionViewCell,current:Int)-> CustomCollectionViewCell{
        cell.commentLabelViewCollectionCell.text = animalPhotoArray[current].animalComment
        cell.imageViewCollectionCell.image = animalPhotoArray[current].animalImage
        return cell
    }
    
    
}
