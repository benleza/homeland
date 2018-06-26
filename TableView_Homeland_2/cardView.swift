//
//  cardView.swift
//  TableView_Homeland_2
//
//  Created by Guilherme Daguir Lima Viana on 25/06/18.
//  Copyright © 2018 Guilherme Daguir Lima Viana. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class CardView : UITableViewCell {
    
    @IBInspectable var cornerRadius : CGFloat = 10
    @IBInspectable var shadowColor : UIColor? = UIColor.black
    
    @IBInspectable var setWidth : Int = 0
    @IBInspectable var setHeigth : Int = 1
    
    @IBInspectable var shadowOpacity : Float = 0.5
    
    override func layoutSubviews() {
        
        layer.cornerRadius = cornerRadius
        layer.shadowColor = shadowColor?.cgColor
        
        layer.shadowOffset = CGSize (width: setWidth, height: setHeigth)
        
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        
        layer.shadowPath = shadowPath.cgPath
        layer.shadowOpacity = shadowOpacity
    }
}
