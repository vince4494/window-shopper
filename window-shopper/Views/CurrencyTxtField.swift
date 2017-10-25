//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by vince zipparro on 10/24/17.
//  Copyright © 2017 vince zipparro. All rights reserved.
//

import UIKit


//IBDesignable is a class attribute that allows changes made in the code to show up in the interface builder
@IBDesignable
class CurrencyTxtField: UITextField
{
    //view logic needs to happen in prepare for interface builder then
    override func prepareForInterfaceBuilder()
    {
        customizeView()
    }
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        
        //call custom func
        customizeView()
    
    }
    
    func customizeView()
    {
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        
        
        if let p = placeholder
        {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
        
    }
  

}
