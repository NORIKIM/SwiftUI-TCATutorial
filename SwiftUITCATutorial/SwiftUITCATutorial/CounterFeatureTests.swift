//
//  CounterFeatureTests.swift
//  SwiftUITCATutorial
//
//  Created by iOS Dev on 6/4/25.
//

import ComposableArchitecture
import Testing

@testable import SwiftUITCATutorial

@MainActor
struct CounterFeatureTests {
    @Test
//    func timer() async {
//        let clock = TestClock()
//        let store = TestStore(initialState: CounterFeature.State()) {
//            CounterFeature()
//        } withDependencies: {
//            $0.continuousClock = clock
//        }
//        
//        await store.send(.toggleTimerButtonTapped) {
//            $0.isTimerRunning = true
//        }
//        await clock.advance(by: .seconds(1))
//        await store.receive(\.timerTick) {
//            $0.count = 1
//        }
//        await store.send(.toggleTimerButtonTapped) {
//            $0.isTimerRunning = false
//        }
//    }
    
    func numberFact() async {
        let store = TestStore(initialState: CounterFeature.State()) {
            CounterFeature()
        } withDependencies: {
            $0.numberFact.fetch = { "\($0) is a good number." }
        }
        
        await store.send(.factButtonTapped) {
            $0.isLoading = true
        }
        await store.receive(\.factResponse) {
            $0.isLoading = false
            $0.fact = "0 is a good number."
        }
    }
}
