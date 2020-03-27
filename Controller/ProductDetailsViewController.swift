//
//  ProductDetailsViewController.swift
//  Projekti 1 - Arber Asllani
//
//  Created by Cacttus Education 01 on 23.3.20.
//  Copyright © 2020 Cacttus Education 01. All rights reserved.
//

import UIKit

class ProductDetailsViewController: UIViewController {
    
    @IBOutlet weak var productLabel: UILabel!
    @IBOutlet weak var productImage: UIImageView!
        
    var product: Products!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.productImage.image = product.image
        self.productLabel.text = product.title
    }

}
