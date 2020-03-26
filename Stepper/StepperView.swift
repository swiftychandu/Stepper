//
//  StepperView.swift
//  Stepper
//
//  Created by chandrasekhar yadavally on 3/26/20.
//  Copyright © 2020 chandrasekhar yadavally. All rights reserved.
//

import UIKit

class StepperView: UIStepper {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure() {
           tintColor = .systemRed
           value = 15
           minimumValue = -100
           maximumValue = 100
           stepValue = 5
           translatesAutoresizingMaskIntoConstraints = false
       }

}
