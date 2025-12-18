//
//  NetworkErrorMessage.swift
//  TestIOS
//
//  Created by Affan Laptops on 18/12/2025.
//

import SwiftUI

struct NetworkErrorMessage: Identifiable {
    let id = UUID()
    let errorTitle:Text
    let errorMessage:Text
    let dismissButton:Alert.Button
}

struct ErrorMessage {
    static let invalidData = NetworkErrorMessage(
        errorTitle: Text("Server Error"),
        errorMessage: Text("The data returned by the server is invalid."),
        dismissButton: .default(Text("OK"))
    )
    
    static let invalideResponse = NetworkErrorMessage(
        errorTitle: Text("Server Error"),
        errorMessage: Text("The response from the server was invalid."),
        dismissButton: .default(Text("OK"))
    )
    
    static let invalidURL = NetworkErrorMessage(
        errorTitle: Text("Server Error"),
        errorMessage: Text("The URL provided was invalid."),
        dismissButton: .default(Text("OK"))
    )
    static let unableToComplete = NetworkErrorMessage(
        errorTitle: Text("Server Error"),
        errorMessage: Text("Unable to complete the request. Please check your internet connection and try again."),
        dismissButton: .default(Text("OK"))
    )
}
