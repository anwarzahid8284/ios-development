//
//  TestIOSApp.swift
//  TestIOS
//
//

import SwiftUI

@main // this is the entry point of the app
struct TestIOSApp: App {
    var body: some Scene {
        WindowGroup {
            //WeatherScreen()
            //AppFrameScreen()
            //BarcodeScannerView()
            AppetizerScreen()
                .onAppear {
                    print("content view appeared")
                }
                .onDisappear {
                    print("content view disappeared")
                }
        }
    }
}
