//
//  SelectionVC.swift
//  Delegate Demo
//
//  Created by Andrew on 8/15/20.
//  Copyright © 2020 Andrii Halabuda. All rights reserved.
//

import UIKit

class SelectionVC: UIViewController {

    var delegate: SelectionDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func capTapped(_ sender: Any) {
        delegate?.selected(side: "Cap")
    }
    
    @IBAction func starkTapped(_ sender: Any) {
        delegate?.selected(side: "Stark")
    }

}
