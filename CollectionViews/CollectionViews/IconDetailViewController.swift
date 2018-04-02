//
//  IconDetailViewController.swift
//  CollectionViews
//
//  Created by Jose Melendez on 4/2/18.
//  Copyright © 2018 Jose Melendez. All rights reserved.
//

import UIKit

class IconDetailViewController: UIViewController {
    
    var icon: Icon?

    @IBOutlet weak var nameLabel: UILabel!{
        didSet{
            nameLabel.text = icon?.name
        }
    }
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!{
        didSet{
            if let icon = icon {
                priceLabel.text = "\(icon.price)"
            }
        }
    }
    @IBOutlet weak var iconImageView: UIImageView! {
        didSet {
            iconImageView.image = UIImage(named: icon?.name ?? "")
        }
    }
}
