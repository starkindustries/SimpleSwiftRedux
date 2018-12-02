//
//  ReSwiftExample.swift
//  SimpleRedux
//
//  Created by Zion Perez on 12/2/18.
//  Copyright © 2018 Zion Perez. All rights reserved.
//

import Foundation
import ReSwift

// ********************
// State
// ********************
struct AppState: StateType {
    // ... app state properties here ...
    var counter: Int = 0
}

// ********************
// Actions
// ********************
struct IncreaseAction: Action {
    let increaseBy: Int
}

struct DecreaseAction: Action {
    let decreaseBy: Int
}

// ********************
// Reducer
// ********************
func appReducer(action: Action, state: AppState?) -> AppState {
    // ...
    var state = state ?? AppState()
    
    switch action {
    case let addAction as IncreaseAction:
        state.counter += addAction.increaseBy
    case let subtractAction as DecreaseAction:
        state.counter -= subtractAction.decreaseBy
    default: break
    }
    
    return state
}
