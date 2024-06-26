//
//  calculService.swift
//  codebaseCalcul
//
//  Created by 백시훈 on 6/24/24.
//

import Foundation
import UIKit
class CalculService{
    public func operation(_ input: InputData) -> InputData{
        var input = input
        if let expression = NSExpression(format: input.formula) as NSExpression?,
           let result = expression.expressionValue(with: nil, context: nil) as? NSNumber {
            input.result = result.stringValue
            input.formula = ""
        }
        return input
    }
}
