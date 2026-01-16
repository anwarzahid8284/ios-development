//
//  NetworkErrorMessage.swift
//  TestIOS
//
//  Created by Affan Laptops on 18/12/2025.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title:Text
    let message:Text
    let dismissButton:Alert.Button
}

struct AlertContext {
    //Mark: -Ntewor Alert
    static let invalidData = AlertItem(
        title: Text("Server Error"),
        message: Text("The data returned by the server is invalid."),
        dismissButton: .default(Text("OK"))
    )
    
    static let invalideResponse = AlertItem(
        title: Text("Server Error"),
        message: Text("The response from the server was invalid."),
        dismissButton: .default(Text("OK"))
    )
    
    static let invalidURL = AlertItem(
        title: Text("Server Error"),
        message: Text("The URL provided was invalid."),
        dismissButton: .default(Text("OK"))
    )
    static let unableToComplete = AlertItem(
        title: Text("Server Error"),
        message: Text("Unable to complete the request. Please check your internet connection and try again."),
        dismissButton: .default(Text("OK"))
    )
    static let invalidDeviceInput = AlertItem(
        title: Text("Invalid Device Input"),
        message: Text("Something is wrong with the camera. We are unable to capture the input."),
        dismissButton: .default(Text("OK")))
    
    static let invalidScannedType = AlertItem(
        title: Text("Invalid Scan Type"),
        message: Text("The value scanned is not valid. This app scans EAN-8 and EAN-13."),
        dismissButton: .default(Text("OK")))
    static let invalidForm = AlertItem(
        title: Text("Invalid Form"),
        message: Text("Make sure all fields are filled."),
        dismissButton: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(
        title: Text("Invalid Eamil"),
        message: Text("Make sure the email is valid."),
        dismissButton: .default(Text("OK")))
}

