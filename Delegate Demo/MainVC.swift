//
//  ViewController.swift
//  Delegate Demo
//
//  Created by Andrew on 8/15/20.
//  Copyright © 2020 Andrii Halabuda. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func openSelectionScreen(_ sender: Any) {
        let selectionVC = storyboard?.instantiateViewController(identifier: "SelectionVC") as! SelectionVC
        selectionVC.delegate = self
        present(selectionVC, animated: true, completion: nil)
    }
}

// MARK: - SelectionDelegate conformance
extension MainVC: SelectionDelegate {
    func selected(side: String) {
        print("Selected: \(side) side!")
        self.label.text = side
    }
}

