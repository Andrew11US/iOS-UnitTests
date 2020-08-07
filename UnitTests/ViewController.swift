//
//  ViewController.swift
//  UnitTests
//
//  Created by Andrew on 8/4/20.
//  Copyright © 2020 Andrii Halabuda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.isHidden = true
    }
    
    @IBAction func click(_ sender: Any) {
        lbl.isHidden = false
    }

    @IBAction func click2(_ sender: Any) {
        view.layer.backgroundColor = UIColor.red.cgColor
        let axyx :Int? = nil
        print(axyx ?? 0)
    }
}
