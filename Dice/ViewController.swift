//
//  ViewController.swift
//  Dice
//
//  Created by Aswin Thomas on 3/1/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Button got pressed")
        
        let images: [UIImage?] = [UIImage(named: "DiceOne"),
                                  UIImage(named: "DiceTwo"),
                                  UIImage(named: "DiceThree"),
                                  UIImage(named: "DiceFour"),
                                  UIImage(named: "DiceFive"),
                                  UIImage(named: "DiceSix")]
        let leftDiceNumber = Int.random(in: 0..<images.count)
        let rightDiceNumber = Int.random(in: 0..<images.count)
        diceImageView1.image = images[leftDiceNumber]
        diceImageView2.image = images[rightDiceNumber]
    }
}

