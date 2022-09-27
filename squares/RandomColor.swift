//
//  RandomColor.swift
//  squares
//
//  Created by Arina Postnikova on 25.09.22.
//

import UIKit

extension UIColor {
    static var randomColor: UIColor {
        UIColor(red: .random(in: 0...1),
                       green: .random(in: 0...1),
                       blue: .random(in: 0...1),
                       alpha: 1.0)
    }
}
