//
//  ViewController.swift
//  SimpleRedux
//
//  Created by Zion Perez on 12/2/18.
//  Copyright © 2018 Zion Perez. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, StoreSubscriber {

    @IBOutlet weak var counterLabel: UILabel!
    
    @IBAction func didPressPlusButton(_ sender: UIButton) {
        print("PLUS")
        store.dispatch(action: IncreaseAction(increaseBy: 1))
    }
    
    @IBAction func didPressMinusButton(_ sender: UIButton) {
        print("MINUS")
        store.dispatch(action: DecreaseAction(decreaseBy: 1))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        store.subscribe(self)
    }
    
    func newState(state: State) {
        guard let appState = state as? AppState else { return }
        counterLabel.text = appState.counter.description
    }
}

