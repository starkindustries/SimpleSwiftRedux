//
//  ViewController.swift
//  SimpleRedux
//
//  Created by Zion Perez on 12/2/18.
//  Copyright © 2018 Zion Perez. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    
    @IBAction func didPressPlusButton(_ sender: UIButton) {
        print("PLUS")
        counterLabel.text = "PLUS"
    }
    
    @IBAction func didPressMinusButton(_ sender: UIButton) {
        print("MINUS")
        counterLabel.text = "MINUS"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

