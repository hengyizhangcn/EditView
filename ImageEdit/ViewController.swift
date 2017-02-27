//
//  ViewController.swift
//  ImageEdit
//
//  Created by zhy on 27/02/2017.
//  Copyright © 2017 zhy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var editView: EditView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        editView.text = "测试"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

