//
//  ViewController.swift
//  Dice App
//
//  Created by Özlem Körpe on 22.05.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var resetButton: UIButton!
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Roll button is pressed")
        resetButton.isEnabled = true
        diceImageView1.alpha = 1
        diceImageView2.alpha = 1
    }

    @IBAction func resetButtonPressed(_ sender: UIButton) {
        print("Reset button is pressed")
        diceImageView1.image = UIImage(imageLiteralResourceName: "DiceOne")
        diceImageView2.image = UIImage(imageLiteralResourceName: "DiceOne")
        diceImageView1.alpha = 0.5
        diceImageView2.alpha = 0.5
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        resetButton.isEnabled = false
        
        // Do any additional setup after loading the view.

        //diceImageView2.alpha = 0.5
    // Set alpha as 0.5 in beginning.
    // Clicking on Roll randomly selects a dice and sets alpha as 1
    // Add reset button to reset dices to 1, it selts alpha as 0.5 again
        
    }



}

