//
//  RandomCoordinates.swift
//  squares
//
//  Created by Arina Postnikova on 27.09.22.
//

import UIKit

extension CGFloat {
    static func getRandomCoordinates(
        maxX: CGFloat,
        maxY: CGFloat
    ) -> (CGFloat, CGFloat) {
        (.random(in: 0...maxY), .random(in: 0...maxX))
    }
}
