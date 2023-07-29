//
//  DetaisViewController.swift
//  SuperKahramanKitabi
//
//  Created by İbrahim Halid Bayrak on 29.07.2023.
//

import UIKit

class DetaisViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    var secilenKahramanIsmi = ""
    var secilenKahramanGorselIsmi = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: secilenKahramanGorselIsmi)
        label.text = secilenKahramanIsmi
        
    }
    

}
