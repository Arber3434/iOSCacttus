//
//  ProductsCell.swift
//  Projekti 1 - Arber Asllani
//
//  Created by Cacttus Education 09 on 3/27/20.
//  Copyright © 2020 Cacttus Education 01. All rights reserved.
//

import UIKit

class ProductsCell: UITableViewCell {
            
        @IBOutlet weak var productImageView: UIImageView!
        @IBOutlet weak var productTitleLabel: UILabel!
        
        func setProduct(product: Products){
                productImageView.image = product.image
                productTitleLabel.text = product.title
            }
            
        }
    
