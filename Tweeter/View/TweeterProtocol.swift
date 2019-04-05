//
//  TweeterProtocol.swift
//  Tweeter
//
//  Created by Jann Aleli Zaplan on 5/4/19.
//  Copyright © 2019 Jann Aleli Zaplan. All rights reserved.
//

import Foundation


protocol TweeterProtocol {
     func getSubstring(stringMessage: String) -> (String, String)
     func splitMessage(stringMessage: String) -> [String]
     func getMessageCount(stringLen: Int) -> Int
    
}
