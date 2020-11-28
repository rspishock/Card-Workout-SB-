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
    
    var cards: [UIImage] = Deck.allValues
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startTimer()

        for button in buttons {
            button.layer.cornerRadius = 8
        }
        
    }       // viewDidLoad()
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        timer.invalidate()
    }       // viewWillDisappear
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }       // startTimer
    
    @objc func showRandomImage() {
        cardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
    }       // showRandomImage
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        timer.invalidate()
    }       // stopButtonTapped
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        timer.invalidate()
        startTimer()
    }       // restartButtonTapped
}
