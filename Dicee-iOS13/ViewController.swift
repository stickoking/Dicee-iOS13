//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Prasshant Shanmugalingam on 11/06/2023.
//

import UIKit

class ViewController: UIViewController {
    let dice: [String] = ["DiceOne", "DiceTwo", "DiceThree", "DiceFive", "DiceSix"]
    
    
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adjustOpacity(true)
        
      
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageViewOne.image = UIImage(imageLiteralResourceName: dice.randomElement()!)
        diceImageViewTwo.image = UIImage(imageLiteralResourceName: dice.randomElement()!)
        adjustOpacity(false)
        
    }
    
    func adjustOpacity(_ initialize: Bool) {
        if (initialize) {
            diceImageViewOne.alpha = 0.5
            diceImageViewTwo.alpha = 0.5
        }
        else {
            diceImageViewOne.alpha = 1
            diceImageViewTwo.alpha = 1
        }
    }
    
}
