//
//  CalController.swift
//  codebaseCalcul
//
//  Created by 백시훈 on 6/27/24.
//

import Foundation
class CalController{
    let calculService = CalculService()
    
    public func operation(_ input: InputData) -> InputData{
        return calculService.operation(input)
    }
}
