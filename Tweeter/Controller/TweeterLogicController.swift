//
//  TweeterLogicController.swift
//  Tweeter
//
//  Created by Jann Aleli Zaplan on 1/4/19.
//  Copyright © 2019 Jann Aleli Zaplan. All rights reserved.
//

import Foundation

public class TweeterLogic {
    
    open func splitMessage(stringMessage: String) -> String{
        
        if stringMessage.count > 50 {
            let strIndex = stringMessage.index(stringMessage.startIndex, offsetBy: 50)
           
           print(strIndex)
            let substring = stringMessage[..<strIndex]
            return String(substring)
        }
        
        return stringMessage
        
        
    }
    
}
