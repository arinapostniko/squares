//
//  RandomSize.swift
//  squares
//
//  Created by Arina Postnikova on 27.09.22.
//

import UIKit

extension CGFloat {
    static func randomSize(maxSize: CGFloat) -> CGFloat {
        .random(in: 1...maxSize)
    }
}
