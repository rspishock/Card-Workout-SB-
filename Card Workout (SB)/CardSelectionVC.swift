//
//  CardSelectionVC.swift
//  Card Workout (SB)
//
//  Created by Ryan Spishock on 11/27/20.
//

import UIKit

class CardSelectionVC: UIViewController {

    @IBOutlet var cardImageView: UIImageView!
    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for button in buttons {
            button.layer.cornerRadius = 8
        }
        
    }       // viewDidLoad()
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
    }       // stopButtonTapped
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func rulesButtonTapped(_ sender: UIButton) {
    }
}
