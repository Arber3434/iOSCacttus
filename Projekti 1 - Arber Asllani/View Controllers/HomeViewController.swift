//
//  HomeViewController.swift
//  Projekti 1 - Arber Asllani
//
//  Created by Cacttus Education 01 on 22.3.20.
//  Copyright © 2020 Cacttus Education 01. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var labelUserName: UILabel!
    @IBOutlet var productsTableView: UITableView!
    
    var productBrands = ["Fove 0", "Oculus Rift", "HTC Vive", "PlayStation VR"];
    var productDesc = ["The Fove 0 is a tethered headset that hooks to a gaming computer, just like the Oculus Rift or HTC Vive.", "An Oculus Rift is a head-mounted display manufactured by Oculus VR.", "The headset uses 'room scale' tracking technology, allowing the user to move in 3D space and use motion-tracked handheld controllers to interact with the environment.", "Known by the codename Project Morpheus during development, is a virtual reality headset developed by Sony Computer Entertainment"]
    
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelUserName.text = userName
        
        productsTableView.delegate = self
        productsTableView.dataSource = self
    }
}

extension HomeViewController: UITableViewDelegate {
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("")
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productBrands.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        
        cell.textLabel?.text = productBrands[indexPath.row]
        return cell
    }
}

