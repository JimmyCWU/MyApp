//
//  ViewController.swift
//  jimmy1
//
//  Created by Jimmy on 5/01/20.
//  Copyright © 2020 Jimmy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomIndex1 : Int = 0
    let dishArray = ["dish1","dish2", "dish3","dish4","dish5","dish6","dish7", "dish8"]
    @IBOutlet weak var label: UILabel!
    @IBAction func roll(_ sender: Any) {
        label.text = "good"
    }
    
    @IBOutlet weak var food1: UIImageView!
    
    
    @IBAction func ideas(_ sender: Any) {
       updateDish()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         randomIndex1 = Int(arc4random_uniform(8))
         food1.image = UIImage(named:dishArray[randomIndex1])
        
    }

    
    func updateDish(){
         randomIndex1 = Int(arc4random_uniform(8))
         food1.image = UIImage(named:dishArray[randomIndex1])
        
    }
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == UIEvent.EventSubtype.motionShake{
            updateDish()
            
        }
        
    }
}

