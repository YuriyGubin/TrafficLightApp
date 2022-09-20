//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Юрий Губин on 16.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var gradientRed: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.type = .radial
        gradient.colors = [
            UIColor.red.cgColor,
            UIColor.red.cgColor,
            UIColor.black.cgColor
        ]
        gradient.startPoint = CGPoint(x: 0.5, y: 0.5)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        return gradient
    }()
    
    lazy var gradientYellow: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.type = .radial
        gradient.colors = [
            UIColor.yellow.cgColor,
            UIColor.yellow.cgColor,
            UIColor.black.cgColor
        ]
        gradient.startPoint = CGPoint(x: 0.5, y: 0.5)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        return gradient
    }()
    
    lazy var gradientGreen: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.type = .radial
        gradient.colors = [
            UIColor.green.cgColor,
            UIColor.green.cgColor,
            UIColor.black.cgColor
        ]
        gradient.startPoint = CGPoint(x: 0.5, y: 0.5)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        return gradient
    }()
    
    @IBOutlet var greenView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var redView: UIView!
    
    @IBOutlet var switchButton: UIButton!
    
    @IBOutlet var redGradientView: UIView!
    @IBOutlet var yellowGradientView: UIView!
    @IBOutlet var greenGradientView: UIView!
    
    override func viewDidLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.size.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.size.width / 2
        greenView.layer.cornerRadius = greenView.frame.size.width / 2
        switchButton.layer.cornerRadius = 10
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redGradientView.isHidden = true
        yellowGradientView.isHidden = true
        greenGradientView.isHidden = true
    }
    
    @IBAction func switchButtonTapped() {
        
        if switchButton.titleLabel?.text == "START" {
            greenView.alpha = 1
            switchButton.setTitle("NEXT", for: .normal)
        }
        
        
        
        if redView.alpha == 1 {
            
            redView.alpha = 0.3
            yellowView.alpha = 1
            
//            redView.isHidden = false
//            yellowView.isHidden = true
//            greenView.isHidden = false
            
            redGradientView.isHidden = true
            yellowGradientView.isHidden = false
            greenGradientView.isHidden = true
            
            gradientYellow.frame = yellowGradientView.bounds
            yellowGradientView.layer.addSublayer(gradientYellow)

        } else if yellowView.alpha == 1 {
            
            yellowView.alpha = 0.3
            greenView.alpha = 1
            
//            redView.isHidden = false
//            yellowView.isHidden = false
//            greenView.isHidden = true
            
            redGradientView.isHidden = true
            yellowGradientView.isHidden = true
            greenGradientView.isHidden = false
            
            gradientGreen.frame = greenGradientView.bounds
            greenGradientView.layer.addSublayer(gradientGreen)
            
        } else {
            
            greenView.alpha = 0.3
            redView.alpha = 1
            
//            redView.isHidden = true
//            yellowView.isHidden = false
//            greenView.isHidden = false
            
            redGradientView.isHidden = false
            yellowGradientView.isHidden = true
            greenGradientView.isHidden = true
            
            gradientRed.frame = redGradientView.bounds
            redGradientView.layer.addSublayer(gradientRed)
        }
    }
}

