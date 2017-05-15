//
//  InventoryCollectionViewController.swift
//  CarCollection
//
//  Created by Richard Garrison on 5/14/17.
//  Copyright © 2017 Richard Garrison. All rights reserved.
//

import UIKit


class InventoryCollectionViewController: UICollectionViewController {
    
    var cars = [
        (model: "2014 Acura ILX", price: 31600.0, image: "2014AcuraILX"),
        (model: "2014 Audi A4", price: 39400.0, image: "2014AudiA4"),
        (model: "2014 Cadillac ATS", price: 40000.0, image: "2014CadillacATS"),
        (model: "2014 Cadillac CTS", price: 45000.0, image: "2014CadillacCTS"),
        (model: "2014 Ford Edge", price: 28000.0, image: "2014FordEdge"),
        (model: "2014 Ford Escape", price: 25000.0, image: "2014FordEscape"),
        (model: "2012 Honda CRV", price: 24000.0, image: "2012HondaCRV"),
        (model: "2014 Honda Odyssey", price: 26000.0, image: "2014HondaOdyssey"),
        (model: "2015 Audi Q3", price: 36000.0, image: "2015AudiQ3"),
        (model: "2015 Audi Q5", price: 48000.0, image: "2015AudiQ5"),
    ]
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return cars.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellCar", for: indexPath) as! InventoryCollectionViewCell
        // Edit border style
        cell.layer.borderWidth = 0.5
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.cornerRadius = 5
        
        let car = cars[indexPath.row]
    
        // Configure the cell
        cell.carImageView.image = UIImage(named: car.image)
        cell.carModelLabel.text = car.model
        cell.carPriceLabel.text = car.price.currencyFormatter
        
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
