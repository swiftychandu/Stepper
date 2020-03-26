//
//  LabelView.swift
//  Stepper
//
//  Created by chandrasekhar yadavally on 3/26/20.
//  Copyright © 2020 chandrasekhar yadavally. All rights reserved.
//

import UIKit

class LabelView: UILabel {

  override init(frame: CGRect) {
      super.init(frame: frame)
      configure()
  }
  
  required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
  
  func configure() {
             translatesAutoresizingMaskIntoConstraints = false
             font = UIFont.preferredFont(forTextStyle: .body)
             textColor = .secondaryLabel
             adjustsFontSizeToFitWidth = true
             minimumScaleFactor = 0.75
             lineBreakMode = .byWordWrapping
             textAlignment = .center
  }

}
