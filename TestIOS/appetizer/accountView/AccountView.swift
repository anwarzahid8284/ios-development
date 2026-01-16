//
//  AccountView.swift
//  TestIOS
//
//  Created by Affan Laptops on 08/12/2025.
//

import SwiftUI

struct AccountView: View {
    @StateObject private var viewModel = AccountViewModel()
    var body: some View {
        NavigationView {
            Form{
                Section (header: Text("Personal INFO")){
                    TextField("First Name",text: $viewModel.firstName)
                    TextField("Last Name",text: $viewModel.lastName)
                    TextField("Email",text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday", selection: $viewModel.birthday , displayedComponents: .date)
                    
                    Button(){
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                    
                }
                Section(header: Text("Request")){
                    Toggle("Extra Nakings",isOn: $viewModel.extraNapkin)
                        .toggleStyle(SwitchToggleStyle(tint: .blue))
                    Toggle("Extra Fill",isOn: $viewModel.extraFill)
                        .toggleStyle(SwitchToggleStyle(tint: .blue))
                }
            }
            .navigationTitle("Account")
        }
        .alert(item: $viewModel.alertItem) { item in
            Alert(title: item.title,message: item.message,dismissButton: item.dismissButton)
        }
        
    }
}

#Preview {
    AccountView()
}
