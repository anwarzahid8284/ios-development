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
            ContentView()
                .onAppear {
                    print("content view appeared")
                }
                .onDisappear {
                    print("content view disappeared")
                }
        }
        .onChange(of:scenePhase){ newPhase in
            switch newPhase {
            case .active:
                print("app become active")
            case .inactive:
                print("app become inactive")
            case .background:
                print("app go to background")
            @unknown default:
                print("no app state")
            }
            
        }
    }
}
