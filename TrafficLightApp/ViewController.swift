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
        
        greenView.layer.cornerRadius = 65
        yellowView.layer.cornerRadius = 65
        redView.layer.cornerRadius = 65
        switchButton.layer.cornerRadius = 10
    }

    @IBAction func switchButtonTapped() {
        if switchButton.titleLabel?.text == "Start" {
            greenView.alpha = 1
            switchButton.setTitle("Next", for: .normal)
        }
        
        if redView.alpha == 1 {
            redView.alpha = 0.3
            yellowView.alpha = 1
            switchButton.setTitle("Next", for: .normal)
        } else if yellowView.alpha == 1 {
            yellowView.alpha = 0.3
            greenView.alpha = 1
            switchButton.setTitle("Next", for: .normal)
        } else if greenView.alpha == 1 {
            greenView.alpha = 0.3
            redView.alpha = 1
            switchButton.setTitle("Next", for: .normal)
        }
    }
    
}

