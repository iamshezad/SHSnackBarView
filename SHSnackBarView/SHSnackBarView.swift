//
//  snackBarView.swift
//  SHUI
//
//  Created by Focaloid Technologies on 14/08/17.
//  Copyright © 2017 Focaloid Technologies. All rights reserved.
//

import Foundation
import UIKit

public class snackBar:UIView {
    let textView = UILabel()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = CGRect(x:0, y: UIScreen.main.bounds.height - 50, width: UIScreen.main.bounds.width, height: 50)
        textView.frame = CGRect(x:0, y:0, width: self.frame.width ,height: 50)
        self.addSubview(self.textView)
           }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    public func showSnackBar(view:UIView,bgColor:UIColor,text:String,textColor:UIColor,interval:Int){
        self.frame = CGRect(x:0, y: UIScreen.main.bounds.height, width: UIScreen.main.bounds.width, height: 50)
        textView.text = text
        textView.textColor = textColor
        textView.font = UIFont.systemFont(ofSize: 14)
        textView.textAlignment = NSTextAlignment.center
        self.backgroundColor = bgColor
        view.addSubview(self)
        UIView.animate(withDuration: 0.5) { 
           self.frame = CGRect(x:0, y: UIScreen.main.bounds.height - 50, width: UIScreen.main.bounds.width, height: 50)
            
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(interval)) {
            UIView.animate(withDuration: 0.5, animations: {
                  self.frame = CGRect(x:0, y: UIScreen.main.bounds.height, width: UIScreen.main.bounds.width, height: 50)
            }) { (success) in
                self.removeFromSuperview()
            }
        }

        
    }
}
