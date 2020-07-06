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
    
    private var leftScore = 0
    private var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func dealButton(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        
        let rightNumber = Int.random(in: 2...14)
        
        leftCardView.image = UIImage(named: "card\(leftNumber)")
        
        rightCardView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber{
            leftScore += 1
            leftPlayerScore.text = String(leftScore)
        }else if leftNumber < rightNumber {
            rightScore += 1
            rightCpuScore.text = String(rightScore)
            
        } else{
            //Tie
            print("Match tie")
        }
        
    }
    

}

