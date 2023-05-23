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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Disable reset button in the beginning
        resetButton.isHidden = true
        
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        resetButton.isHidden = false
        diceImageView1.alpha = 1
        diceImageView2.alpha = 1

        let diceFaces = [UIImage(imageLiteralResourceName: "DiceOne"), UIImage(imageLiteralResourceName: "DiceTwo"), UIImage(imageLiteralResourceName: "DiceThree"), UIImage(imageLiteralResourceName: "DiceFour"), UIImage(imageLiteralResourceName: "DiceFive"), UIImage(imageLiteralResourceName: "DiceSix")]
        // Randomize Images with each button press
        diceImageView1.image = diceFaces.randomElement()
        diceImageView2.image = diceFaces.randomElement()
        // randomElement() = Int.random(in: 0...5)
    }

    @IBAction func resetButtonPressed(_ sender: UIButton) {
        // Reset images to DiceOne and set opcaity
        diceImageView1.image = UIImage(imageLiteralResourceName: "DiceOne")
        diceImageView2.image = UIImage(imageLiteralResourceName: "DiceOne")
        diceImageView1.alpha = 0.5
        diceImageView2.alpha = 0.5
        resetButton.isHidden = true
    }



}

