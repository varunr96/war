//
//  ViewController.swift
//  War
//
//  Created by Varun Rana on 1/16/15.
//  Copyright (c) 2015 Varun Rana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    
    @IBOutlet weak var resultview: UILabel!
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.playRoundButton.setTitle("Play", forState: UIControlState.Normal)
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        // Randomize numbers for both cards, construct strings with the random number
        //
        var firstRandomNumber = arc4random_uniform(13)
        var firstCardString:String = String(format: "card%i", firstRandomNumber)
        
        var secondRandomNumber = arc4random_uniform(13)
        var secondCardString:String = String(format: "card%i", secondRandomNumber)
        
        self.firstCardImageView.image = UIImage(named: firstCardString)
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
        
        if (firstRandomNumber > secondRandomNumber) {
           self.resultview.text = "Player 1 Wins!"
            
        }
        else if (secondRandomNumber > firstRandomNumber){
            self.resultview.text = "Player 2 Wins!"
            
        }
        else {
            self.resultview.text = "DRAW"
        }
        
    }

}

