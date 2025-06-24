//
//  AppView.swift
//  SwiftUITCATutorial
//
//  Created by iOS Dev on 6/24/25.
//

import ComposableArchitecture
import SwiftUI

struct AppView: View {
    let store1: StoreOf<CounterFeature>
    let store2: StoreOf<CounterFeature>
    
    var body: some View {
        TabView {
            ContentView(store: store1)
                .tabItem {
                    Text("counter 1")
                }
            ContentView(store: store2)
                .tabItem {
                    Text("counter 1")
                }
        }
    }
}
