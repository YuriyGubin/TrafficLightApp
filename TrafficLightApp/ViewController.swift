//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Юрий Губин on 16.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var greenView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var redView: UIView!
    @IBOutlet var switchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
        switchButton.layer.cornerRadius = 10
    }
    
    @IBAction func switchButtonTapped() {
        if switchButton.titleLabel?.text == "START" {
            greenView.alpha = 1
        }
        
        if redView.alpha == 1 {
            redView.alpha = 0.3
            yellowView.alpha = 1
        } else if yellowView.alpha == 1 {
            yellowView.alpha = 0.3
            greenView.alpha = 1
        } else {
            greenView.alpha = 0.3
            redView.alpha = 1
            switchButton.setTitle("NEXT", for: .normal)
        }
    }
}

