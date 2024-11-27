//
//  Ratio.swift
//  Cosmo
//
//  Created by 변정훈 on 11/28/24.
//

import SwiftUI

extension Double {
    var adjustToScreenWidth: Double {
        let ratio: Double = Double(UIScreen.main.bounds.width / 375)
        return self * ratio
    }
    
    var adjustToScreenHeight: Double {
        let ratio: Double = Double(UIScreen.main.bounds.height / 812)
        return self * ratio
    }
}
