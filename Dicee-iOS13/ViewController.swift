//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    @IBOutlet weak var dice3: UIImageView!
    
    let diceImages: [UIImage] = [
        UIImage(named: "DiceOne")!,
        UIImage(named: "DiceTwo")!,
        UIImage(named: "DiceThree")!,
        UIImage(named: "DiceFour")!,
        UIImage(named: "DiceFive")!,
        UIImage(named: "DiceSix")!
    ]
    
    var visibleDice = 3
    
    var dice: [UIImageView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dice = [dice1, dice2, dice3]
    }

    @IBAction func rollDice(_ sender: UIButton) {
        dice1.image = diceImages[Int.random(in: 0...5)]
        dice2.image = diceImages[Int.random(in: 0...5)]
        dice3.image = diceImages[Int.random(in: 0...5)]
    }
    
    @IBAction func removeDice(_ sender: Any) {
        if (visibleDice <= 1) {
            return
        }
        
        visibleDice -= 1
        for i in 0..<dice.count {
            if (i < visibleDice) {
                dice[i].isHidden = false
            } else {
                dice[i].isHidden = true
            }
        }
    }

    @IBAction func addDice(_ sender: Any) {
        if (visibleDice >= dice.count) {
            return
        }
        
        visibleDice += 1
        for i in 0..<dice.count {
            if (i < visibleDice) {
                dice[i].isHidden = false
            } else {
                dice[i].isHidden = true
            }
        }
    }
}

