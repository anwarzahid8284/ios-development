//
//  AccountViewModel.swift
//  TestIOS
//
//  Created by Affan Laptops on 16/01/2026.
//

import Foundation

final class AccountViewModel : ObservableObject {
   @Published var firstName: String = ""
   @Published var lastName: String = ""
   @Published var email: String = ""
   @Published var birthday: Date = Date()
   @Published var extraNapkin: Bool = false
   @Published var extraFill: Bool = false
    
    @Published var alertItem: AlertItem?
    
    var isValidForm:Bool{
        guard !firstName.isEmpty, !lastName.isEmpty, !email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        guard email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        return true
    }
    
    func saveChanges(){
        guard isValidForm else {
            return
        }
        print("save changes successfully")
    }
}
