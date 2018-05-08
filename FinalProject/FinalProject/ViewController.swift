//
//  ViewController.swift
//  FinalProject
//
//  Created by Dayton Steffeny on 5/7/18.
//  Copyright © 2018 Dayton Steffeny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SumLabel: UILabel!
    
    @IBOutlet weak var leftSide: UIImageView!
    
    @IBOutlet weak var rightSide: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func clickToRoll(_ sender: UIButton) {
        
        let firstNum = arc4random_uniform(6) + 1
        let secondNum = arc4random_uniform(6) + 1
        
        SumLabel.text = "The sum is: \(firstNum + secondNum)"
        
        leftSide.image = UIImage(named: "Dice\(firstNum)")
        rightSide.image = UIImage(named: "Dice\(secondNum)")
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

