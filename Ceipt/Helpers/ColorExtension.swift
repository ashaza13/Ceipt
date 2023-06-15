//
//  ColorExtension.swift
//  Ceipt
//
//  Created by Ashaz Ahmed on 6/15/23.
//

import SwiftUI

extension Color {
    
    static let main_color = Color("main_color")
    static let primary_color = Color("primary")
    static let secondary_color = Color("secondary")
    static let text_primary_color = Color("text_primary_color")
    static let placeholder_color = Color(UIColor(red: 189/255, green: 189/255, blue: 189/255, alpha: 1.0))
    
    static let dark_blue_color = Color(UIColor(red: 0.14, green: 0.15, blue: 0.51, alpha: 1.0))
    static let purple_color = Color(UIColor(red: 0.33, green: 0.24, blue: 0.40, alpha: 1.0))
    static let pink_color = Color(UIColor(red: 0.96, green: 0.30, blue: 0.45, alpha: 1.0))
    static let tan_color = Color(UIColor(red: 0.60, green: 0.45, blue: 0.56, alpha: 1.0))
    static let blue_color = Color(UIColor(red: 0.18, green: 0.18, blue: 0.64, alpha: 1.0))
    
    static let red_color_trans = Color(UIColor(red: 235/255, green: 87/255, blue: 87/255, alpha: 0.1))
    static let blue_color_trans = Color(UIColor(red: 0/255, green: 106/255, blue: 246/255, alpha: 0.1))
    
    init(hex: String, alpha: Double = 1) {
        var cString: String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        if (cString.hasPrefix("#")) { cString.remove(at: cString.startIndex) }
        
        let scanner = Scanner(string: cString)
        scanner.currentIndex = scanner.string.startIndex
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        self.init(.sRGB, red: Double(r) / 0xff, green: Double(g) / 0xff, blue:  Double(b) / 0xff, opacity: alpha)
    }
}
