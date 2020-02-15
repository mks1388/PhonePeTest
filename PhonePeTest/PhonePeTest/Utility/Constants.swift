//
//  Constants.swift
//  PhonePeTest
//
//  Created by Mithilesh on 15/02/20.
//  Copyright © 2020 Mithilesh. All rights reserved.
//

import Foundation

struct Constants {
    enum File: String {
        case logo
        
        var name: String {
            switch self {
            case .logo:
                return rawValue
            }
        }
        
        var type: String {
            switch self {
            case .logo:
                return "txt"
            }
        }
    }
}
