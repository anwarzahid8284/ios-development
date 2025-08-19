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
 8. Button (action,lable and style)
 9. Color (privided color, primary,secondary,rgb,asset color)
 10. System Icons (SFSymbols)
 11. Frame and Alignmets
 */

import SwiftUI

struct ContentView: View {
    var body: some View {
        /// 8 Button (action,label and style)
        VStack {
            Button {
                print("Button Pressed")
            }label:{
                Text("Press Me")
            }.padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(Capsule())
            /// 9 colors
            /// provided color .foregroundColor(Color.red)
            /// primary color .foregroundColor(Color.primary) --> automatically handle for light and dark them
            /// secondary color .foregroundColor(Color.secondary) color which used same for both light and dark them
            /// rgb color .foregroundColor(Color.init(red: 100/255, green: 50/255, blue: 0/255))
            /// asset color
            
            //Rectangle()
               // .foregroundColor(Color.black)
               // .frame(width: 200, height: 100)
            /// 10 SFsymbol or system icons
            Image(systemName: "xmark.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.red)
            Text("Hello, SwiftUI!")
                .background(.red)
                .foregroundColor(.white)
                .frame(width: 200,height: 200,alignment: .center)
                .background(.blue)
        }
        
        
        
        
    }
}
#Preview {
    ContentView()
}
