//
//  RGB.swift
//  RGB
//
//  Created by Александр on 21.01.2016
//  Copyright © 2015 Александр. All rights reserved.
//

func UIColorFromRGB(colorCode: String, alpha: Float = 1.0) -> UIColor {
            let scanner = NSScanner(string:colorCode)
            var color:UInt32 = 0;
            scanner.scanHexInt(&color)
    
            let mask = 0x000000FF
            let r = CGFloat(Float(Int(color >> 16) & mask)/255.0)
            let g = CGFloat(Float(Int(color >> 8) & mask)/255.0)
            let b = CGFloat(Float(Int(color) & mask)/255.0)
    
            return UIColor(red: r, green: g, blue: b, alpha: CGFloat(alpha))
       }

 UITabBar.appearance().tintColor = UIColorFromRGB("0177BD")//пример