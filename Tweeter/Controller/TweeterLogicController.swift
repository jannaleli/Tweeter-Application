//
//  TweeterLogicController.swift
//  Tweeter
//
//  Created by Jann Aleli Zaplan on 1/4/19.
//  Copyright © 2019 Jann Aleli Zaplan. All rights reserved.
//

import Foundation

public class TweeterLogic: TweeterProtocol {
    
    
    open func getMessageCount(stringLen: Int) -> Int{
        let partial = stringLen.quotientAndRemainder(dividingBy: 50)
        var count: Int = 0
        if partial.remainder != nil {
            count = partial.quotient + 1
        }else{
            count = partial.quotient
        }
        return count
    }
    
   
    
    open func getSubstring(stringMessage: String) -> (String, String)  {
        var msgArray =  stringMessage.split(separator: " ")
        var finalMsg: [String] = [""]
        var count = 0
        for each in msgArray {
            count = count + each.count
            if count < 50 {
                msgArray.removeFirst()
                finalMsg.append(String(each))
            }else{
                count = count - each.count
                break
            }
        }
        
        return (finalMsg.joined(separator: " "), msgArray.joined(separator: " "))
        
    }
    
    open func splitMessage(stringMessage: String) -> [String]{
        let count = self.getMessageCount(stringLen: stringMessage.count)
        var strMsg = stringMessage
        var strLength = stringMessage.count
        var msgArray: [String] = []
        var initialCount = 1
        
        if stringMessage.count > 50 {
            while strLength > 0 {
                let substr = self.getSubstring(stringMessage: strMsg)
                 strMsg = substr.0
                 let finalString = "\(initialCount)/\(count) \(strMsg)"
                initialCount = initialCount + 1
                strLength = strLength - 50
                msgArray.append(finalString)
                strMsg = substr.1
                
            }
           
           return msgArray
      
            
        
        }
        
        
        msgArray.append("\(stringMessage)")
        return msgArray
        
        
    }
    
}
