//
//  IconCollectionViewController.swift
//  CollectionViews
//
//  Created by Jose Melendez on 4/2/18.
//  Copyright © 2018 Jose Melendez. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class IconCollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //prefers large titles
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
private var iconSet = [Icon(name: "candle", price: 2.99, isFeatured: false), Icon(name: "cat", price: 4.92, isFeatured: true), Icon(name: "dribbble", price: 2.34, isFeatured: false), Icon(name: "ghost", price: 2.34, isFeatured: false), Icon(name: "hat", price: 2.34, isFeatured: true), Icon(name: "owl", price: 2.34, isFeatured: false), Icon(name: "pot", price: 2.34, isFeatured: false), Icon(name: "pumkin", price: 2.34, isFeatured: false), Icon(name: "rip", price: 2.34, isFeatured: false), Icon(name: "skull", price: 2.34, isFeatured: false), Icon(name: "sky", price: 2.34, isFeatured: true), Icon(name: "toxic", price: 2.34, isFeatured: false), Icon(name: "ic_book", price: 2.34, isFeatured: false), Icon(name: "ic_backpack", price: 2.34, isFeatured: true), Icon(name: "ic_camera", price: 2.34, isFeatured: false), Icon(name: "ic_coffee", price: 2.34, isFeatured: false),Icon(name: "ic_glasses", price: 2.34, isFeatured: false),Icon(name: "ic_ice_cream", price: 2.34, isFeatured: false), Icon(name: "ic_smoking_pipe", price: 2.34, isFeatured: true), Icon(name: "ic_vespa", price: 2.34, isFeatured: true)  ]
    //MARK: - Required Data Source Methods
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return iconSet.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! IconCollectionViewCell
        
        let icon = iconSet[indexPath.row]
        
        cell.iconImageView.image = UIImage(named: icon.name)
        
        cell.iconPriceLabel.text = String(icon.price)
        
        cell.backgroundView = (icon.isFeatured) ? UIImageView(image: UIImage(named: "feature-bg")) : nil
        
        
        
        
        return cell
    }
    
    //unwind segue

    @IBAction func unwindToHome(segue: UIStoryboardSegue) {
        
    }
    
    //pass icon to detail view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showIconDetail" {
            if let indexPaths = collectionView?.indexPathsForSelectedItems {
                let destinationVC = segue.destination as! IconDetailViewController
                destinationVC.icon = iconSet[indexPaths[0].row]
                collectionView?.deselectItem(at: indexPaths[0], animated: true)
            }
        }
    }
    
    
    
    

}
