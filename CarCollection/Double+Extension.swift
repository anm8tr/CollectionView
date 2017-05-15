//
//  Double+Extension.swift
//  CarCollection
//
//  Created by Richard Garrison on 5/14/17.
//  Copyright © 2017 Richard Garrison. All rights reserved.
//

import Foundation

extension Double {
    var currencyFormatter: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        
        return formatter.string(from: NSNumber(value: self))!
        
        // ourdouble.currencyFormatter()
    }
}
