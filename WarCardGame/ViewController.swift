//
//  ViewController.swift
//  WarCardGame
//
//  Created by Mohan Chandrasekar  on 2020-07-06.
//  Copyright © 2020 Mohan Chandrasekar . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftCardView: UIImageView!
    
    @IBOutlet weak var rightCardView: UIImageView!
    
    @IBOutlet weak var leftPlayerScore: UILabel!
    
    @IBOutlet weak var rightCpuScore: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func dealButton(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        
        let rightNumber = Int.random(in: 2...14)
        
        leftCardView.image = UIImage(named: "card\(leftNumber)")
        
        rightCardView.image = UIImage(named: "card\(rightNumber)")
        
    }
    

}

