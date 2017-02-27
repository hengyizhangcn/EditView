//
//  EditView.swift
//  ImageEdit
//
//  Created by zhy on 27/02/2017.
//  Copyright © 2017 zhy. All rights reserved.
//

import UIKit
import CoreGraphics
class EditView : UIView {
    
    var text: String? {
        set {
            if newValue != nil {
                let label = UILabel()
                let size = newValue!.boundingRect(with: CGSize(), options: NSStringDrawingOptions.usesFontLeading, attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 30)], context: nil)
                label.frame = CGRect(x: (bounds.size.width - size.width) / 2, y: (bounds.size.height - size.height) / 2, width: size.width, height: size.height)
                label.text = newValue
                textLabels.append(label)
            }
        }
        get {
            let label = textLabels.last
            return label?.text
        }
    }
    private var textLabels = Array<UILabel>()
    
    override func draw(_ rect: CGRect) {
        let originImage = UIImage.init(named: "start1")
        originImage?.draw(in: bounds)
        
        for label in textLabels {
            let att = [NSForegroundColorAttributeName:UIColor.blue, NSFontAttributeName:UIFont.systemFont(ofSize: 30), NSBackgroundColorAttributeName: UIColor.red]
            let text = NSString(string: label.text!)
            let size = text.boundingRect(with: CGSize(), options: NSStringDrawingOptions.usesFontLeading, attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 30)], context: nil)
            let frame = CGRect(x: (bounds.size.width - size.width) / 2, y: (bounds.size.height - size.height) / 2, width: size.width, height: size.height)
            text.draw(in: frame, withAttributes: att)
        }
    }
}
