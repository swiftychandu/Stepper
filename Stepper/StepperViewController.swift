//
//  StepperViewController.swift
//  Stepper
//
//  Created by chandrasekhar yadavally on 3/26/20.
//  Copyright © 2020 chandrasekhar yadavally. All rights reserved.
//

import UIKit

class StepperViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureStepper()
        configureLabel()
        view.backgroundColor = .white
    }
    
    let stepper = StepperView(frame: .zero)
    let label = LabelView(frame: .zero)
    
    
    
    func configureStepper() {
        view.addSubview(stepper)
        stepper.addTarget(self, action: #selector(stepperTapped), for: .allTouchEvents)
        
        NSLayoutConstraint.activate([
            stepper.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            stepper.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }
    
    func configureLabel() {
        view.addSubview(label)
        label.text = "Tap the stepper"
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            label.bottomAnchor.constraint(equalTo: stepper.topAnchor, constant: -30),
            label.heightAnchor.constraint(equalToConstant: 44),
            label.widthAnchor.constraint(equalToConstant: 75)
        ])
    }
    
    @objc func stepperTapped() {
        label.text = String(stepper.value)
    }
    
}
