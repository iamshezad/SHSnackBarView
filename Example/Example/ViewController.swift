//
//  ViewController.swift
//  Example
//
//  Created by Focaloid Technologies on 22/08/17.
//  Copyright © 2017 Focaloid Technologies. All rights reserved.
//

import UIKit
import SHSnackBarView

class ViewController: UIViewController {

    let snackbarView = snackBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAction(_ sender: UIButton) {
        let snackbarBgColor = UIColor(white: 1.0, alpha: 0.5)
        snackbarView.showSnackBar(view: self.view, bgColor: snackbarBgColor, text: "This is a snackbar view", textColor: UIColor.white, interval: 2)
    }

}

