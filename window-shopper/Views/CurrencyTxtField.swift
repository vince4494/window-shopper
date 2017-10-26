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
    
    override func draw(_ rect: CGRect)
    {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame:CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 0.8)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        //when working with Draw Rect you must set clipsToBounds on the things that must be clipped otherwise it will take off other features implemented
        currencyLbl.clipsToBounds = true
        
        //this sets the image of currency based on your location
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        
        addSubview(currencyLbl)
        
    }
    
    
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
        
        //when working with Draw Rect you must set clipsToBounds on the things that must be clipped otherwise it will take off other features implemented
        clipsToBounds = true
        
        if let p = placeholder
        {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
        
    }
  

}
