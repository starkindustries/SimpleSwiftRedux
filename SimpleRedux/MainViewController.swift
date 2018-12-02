//
//  ViewController.swift
//  SimpleRedux
//
//  Created by Zion Perez on 12/2/18.
//  Copyright © 2018 Zion Perez. All rights reserved.
//

import UIKit
import ReSwift

class MainViewController: UIViewController, StoreSubscriber {

    @IBOutlet weak var counterLabel: UILabel!
    
    @IBAction func didPressPlusButton(_ sender: UIButton) {
        print("PLUS")
        store.dispatch(IncreaseAction(increaseBy: 1))
    }
    
    @IBAction func didPressMinusButton(_ sender: UIButton) {
        print("MINUS")
        store.dispatch(DecreaseAction(decreaseBy: 1))
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        store.subscribe(self)
    }
    
    // ********************
    // StoreSubscriber
    // ********************
    typealias StoreSubscriberStateType = AppState
    
    func newState(state: StoreSubscriberStateType) {
        counterLabel.text = state.counter.description
    }
}
