//
//  TestIOSApp.swift
//  TestIOS
//
//

import SwiftUI

@main // this is the entry point of the app
struct TestIOSApp: App {
    @Environment(\.scenePhase) var scenePhase
    init() {
        print("app launched")
    }
    var body: some Scene {
        WindowGroup {
            WeatherScreen()
                .onAppear {
                    print("content view appeared")
                }
                .onDisappear {
                    print("content view disappeared")
                }
        }
    }
}
