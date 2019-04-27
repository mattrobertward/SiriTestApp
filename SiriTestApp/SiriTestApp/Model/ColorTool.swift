//
//  ModelTool.swift
//  SiriTestApp
//
//  Created by Matt Ward on 4/27/19.
//  Copyright © 2019 mattrobertward. All rights reserved.
//

import UIKit

public class ColorTool
{
    public func createRandomColor() -> UIColor
    {
        let redPercent : CGFloat = CGFloat (Double(arc4random() % 256) / 256.0)
        let greenPercent : CGFloat = CGFloat (Double(arc4random() % 256) / 256.0)
        let bluePercent : CGFloat = CGFloat (Double(arc4random() % 256) / 256.0)
        
        return UIColor (red: redPercent, green : greenPercent, blue : bluePercent, alpha : CGFloat(100))
    }
}
