//
//  ContentView.swift
//  TestIOS
//
//
/*  Swift UI
 1. VStack (Linear layout vertical orientation)
 2. Text and Image  Modifiers
 3. Builten Shapes (Rectangle,capsule,cirecle,RectangleRound)
 4. Text Field (for single line text)
 5. TextEditor (for multi line text)
 6. Ingnore sefe Area () --> which cover status bar and navigation bar
    like in android statusbar and navigationbar
 7. Group --> every element of swift ui at most 10 child used if you exceed then
     ten child you will be receive an error so for that we used
 */

import SwiftUI

struct ContentView: View {
    @State private var userName: String = ""
    @State private var password: String = "password"
    var body: some View {
        /// screen content cover including status bar and naivgation bar
         //Color.red.edgesIgnoringSafeArea(.all)
        /// solve the ten max child add to any element of the
        VStack{
            Group{
                Text("1")
                Text("1")
                Text("1")
                Text("1")
                Text("1")
                Text("1")
                Text("1")
                Text("1")
                Text("1")
                Text("1")
            }
            Group{
                Text("1")
                Text("1")
                Text("1")
                Text("1")
                Text("1")
                Text("1")
                Text("1")
                Text("1")
                Text("1")
            }
            
            
            Text("1")
            Text("1")
            Text("1")
            Text("1")
            Text("1")
        }
        
        
        
        
        
        // Text field
//        VStack {
//            TextField("Enter your name",text:$password,onEditingChanged: {
//                _ in print("Editing")
//            })
//                .padding()
//                .textFieldStyle(.roundedBorder)
//                .cornerRadius(10)
//                Text(userName)
//            Button("Done"){
//                
//            }
//        }
//        VStack{
//            TextEditor(text: $userName)
//                .scrollContentBackground(.hidden)
//                .background(Color.gray.opacity(0.3))
//                .multilineTextAlignment(.center)
//                .dynamicTypeSize(.xxxLarge)
//                .lineSpacing(30)
//                .padding()
//                .frame(height: 300)
//            
//                
//        }
        
    }
}
#Preview {
    ContentView()
}
