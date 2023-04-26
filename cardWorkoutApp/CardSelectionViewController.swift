//
//  CardSelectionViewController.swift
//  cardWorkoutApp
//
//  Created by Praval Gautam on 26/04/23.
//

import UIKit

class CardSelectionViewController: UIViewController {

    @IBOutlet weak var Image: UIImageView!

    @IBOutlet var buttons: [UIButton]!
     
    var images: [UIImage] = Card.allCards
    
    var timer : Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
        for button in buttons{
            button.layer.cornerRadius = 8
        }
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        timer.invalidate()
    }
        func startTimer(){
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomImages), userInfo: nil, repeats: true)
        }
    @objc func showRandomImages(){
        Image.image = images.randomElement() ?? UIImage(named: "AS")
        }
       
    
    
    @IBAction func stop(_ sender: Any) {
        timer.invalidate()

    }
    
    
    
    @IBAction func restart(_ sender: Any) {
        timer.invalidate()
        startTimer()
        
    }
    
    
    
    
    
}
