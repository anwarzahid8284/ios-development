//
//  ContentView.swift
//  TestIOS
//
//
/*  Swift UI
 1. VStack (Linear layout vertical orientation)
 2. Text and Image  Modifiers
 3. Builten Shapes (Rectangle,capsule,cirecle,RectangleRound)
 */

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack { // vstack is like linear layout with orientatiion vertical
            Text("Hello, world Hello world Hello world Hello world Hellow !")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .bold()
                .italic()
                .lineLimit(2)
                .background(Color.yellow)
            Image(systemName: "globe")
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .cornerRadius(90)
                .clipShape(Circle())
                .background(Color.green)
                .foregroundStyle(.red)
            Rectangle()
                .frame(width: 100,height: 100)
            Capsule()
                .frame(width: 100,height: 100)
            RoundedRectangle(cornerRadius: 20)
                        .fill(Color.blue)
                        .frame(width: 200, height: 100)
                        .shadow(radius: 5)
            
            
        }
        
    }
}
#Preview {
    ContentView()
}
