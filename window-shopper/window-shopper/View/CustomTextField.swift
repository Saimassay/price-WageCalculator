//
//  CustomTextField.swift
//  window-shopper
//
//  Created by Gulnara Saimassay on 6/22/20.
//  Copyright © 2020 Gulnara Saimassay. All rights reserved.
//

import UIKit

@IBDesignable
class CustomTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 40
        let currrencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currrencyLbl.backgroundColor = #colorLiteral(red: 0.5675233603, green: 0.616589129, blue: 0.6822718978, alpha: 0.7450235445)
        currrencyLbl.textAlignment = .center
        currrencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currrencyLbl.layer.cornerRadius = 5.0
        currrencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.locale = Locale.current
        formatter.numberStyle = .currency
        currrencyLbl.text = formatter.currencySymbol
        addSubview(currrencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        
    }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        if placeholder == nil{
            placeholder = " "
        }
        let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: UIColor.white])
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }

}
