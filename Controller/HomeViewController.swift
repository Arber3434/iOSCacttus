//
//  HomeViewController.swift
//  Projekti 1 - Arber Asllani
//
//  Created by Cacttus Education 01 on 22.3.20.
//  Copyright © 2020 Cacttus Education 01. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var userName = ""
    
    @IBOutlet weak var labelUserName: UILabel!
    var products: [Products] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        products = createArray()
        labelUserName.text = userName
        
        let nib = UINib(nibName: "ProductCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "productCell1")
    }
    
    func createArray() -> [Products] {
        
        let product1 = Products(image: #imageLiteral(resourceName:"cheerios"), title: "Cheerios")
        let product2 = Products(image: #imageLiteral(resourceName: "cocoapebbles"), title: "Cocoa Pebbles")
        let product3 = Products(image: #imageLiteral(resourceName: "cocoapuffs"), title: "Cocoa Puffs")
        let product4 = Products(image: #imageLiteral(resourceName: "cookiecrisp"), title: "Cookie Crisp")
        let product5 = Products(image: #imageLiteral(resourceName: "cornflakes"), title: "Corn Flakes")
        let product6 = Products(image: #imageLiteral(resourceName: "frootloops"), title: "Froot Loops")
        let product7 = Products(image: #imageLiteral(resourceName: "wafflecrisp"), title: "Waffle Crisp")
        
        return [product1, product2, product3, product4, product5, product6, product7]
        
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let productsArray = products[indexPath.row]
     let cell = tableView.dequeueReusableCell(withIdentifier: "productsCell") as! ProductsCell
        cell.setProduct(product: productsArray)
        
     return cell
    }
         func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let productsArray = products[indexPath.row]
            
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let productDetails = storyBoard.instantiateViewController(identifier: "ProductDetailsViewController") as! ProductDetailsViewController
            print(productsArray.title)
            
            self.navigationController?.pushViewController(productDetails, animated: true)
           }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
            }
        }
