//
//  SwiftUITCATutorialApp.swift
//  SwiftUITCATutorial
//
//  Created by iOS Dev on 5/30/25.
//

import ComposableArchitecture
import SwiftUI

@main
struct SwiftUITCATutorialApp: App {
    static let store = Store(initialState: CounterFeature.State()) {
        CounterFeature()
            ._printChanges()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: SwiftUITCATutorialApp.store)
        }
    }
}
