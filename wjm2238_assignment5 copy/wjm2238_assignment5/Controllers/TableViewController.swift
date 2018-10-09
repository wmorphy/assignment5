//
//  ViewController.swift
//  wjm2238_assignment5
//
//  Created by Will Morphy on 2/10/18.
//  Copyright © 2018 Will Morphy. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController  {
    
    //Animal Array
    var animalArray:[Animal] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadArray()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Initialising the array of animals
//    A list of all the animal entries (minimum 4) with the navigation label, "Animals." Each animal will have two custom table view cells on the table that together will display all the information. Feel free to choose animals you like rather than the ones displayed in my example.
//    A table view cell that displays the animal's image as a thumbnail and the animal's common name. This cell's background should be a different color to help distinguish it from the other table view cell.
//    A table view cell that displays the animal's scientific name, class and average size (either height or weight, just be consistent). This cell's background color should differ from the other table view cell's color to help distinguish.
//    When the cell with the image and name is selected, you will navigate to a collection view gallery displaying animal images. You should be able to navigate back to the table view by pressing the back button at the top.
    func loadArray(){
        animalArray.append(Animal("Cat","Felis catus","Mammalia",13,#imageLiteral(resourceName: "Cat1")))
        animalArray.append(Animal("Dog","Canis lupus familiaris","Mammalia",15,#imageLiteral(resourceName: "Dog1")))
        animalArray.append(Animal("Crocodile","Crocodylinae","Reptilia",68,#imageLiteral(resourceName: "Crocodile1")))
        animalArray.append(Animal("Bat","Chiroptera","Mammalia",1,#imageLiteral(resourceName: "Bat1")))

    }

    //Number of sections in the Table View
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //Number of rows in the Table view
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return animalArray.count*2
    }
    
    //This table view function adds each cell to the table view while filling each sell with nessasary values etc
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Differentiating between first or second sell
        print(indexPath)
        if (indexPath.row%2 == 0){
            let memberNum = (indexPath.row)/2
            //Creating sell as Custom table view cell
            let cellIdentifier = "CustomTableViewCell"
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! CustomTableViewCell
            
            //Add the Names of the animals to the Labels
            cell.labelViewForNamePhotoCell.text = animalArray[memberNum].name
            //Add the images of the animals to the labels
            cell.mainImageViewForNamePhotoCell.image = animalArray[memberNum].image
            
            return cell
        }
        else{
            let memberNum = (indexPath.row-1)/2
            //Creating sell as Custom table view cell
            let cellIdentifier = "Custom2TableViewCell"
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! Custom2TableViewCell
            
            //Add the Names of the animals to the Labels
            cell.scientificNameLabel.text = animalArray[memberNum].scientificName
            cell.classNameLabel.text = animalArray[memberNum].clas
            cell.weightLabel.text = String(animalArray[memberNum].size!) + " kg"
            
            return cell
        }
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        //if segue.identifier == "CellDetail" {
            
        let GalleryUICollectionController = segue.destination as! GalleryUICollectionController
        
        if let selectedCell = sender as? CustomTableViewCell {
            let indexPath = tableView.indexPath(for: selectedCell)!
            let name = animalArray[indexPath.row/2].name
            GalleryUICollectionController.animalName = name!

        }
//        } else if segue.identifier == "PresentModally" {
//            print("Modal view presented")
    
    }
    
    

}

