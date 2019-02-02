//
//  AnimationHepler.swift
//  EvaTest
//
//  Created by Александр Харченко on 2/2/19.
//  Copyright © 2019 Александр Харченко. All rights reserved.
//

import Foundation
import UIKit

class AnimationServise {
    
    func highlightLabelAnimating(label: UILabel) {
        DispatchQueue.main.async {
            label.alpha = 0
            UIView.animate(withDuration: 1, animations: {
                label.alpha = 1
                label.backgroundColor = Colors.evaOrange
            })
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            label.backgroundColor = UIColor.white
        }
    }
}
