

import SwiftUI

struct WeatherScreen: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing:0){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                        
                }
                .padding(.bottom,80)
                HStack(spacing: 26){
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", highTemperature: 74)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", highTemperature: 88)
                    WeatherDayView(dayOfWeek: "THR", imageName: "wind.snow", highTemperature: 55)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", highTemperature: 60)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "snow", highTemperature: 25)
                }
                Spacer()
                Spacer()
                Button(){
                    print("tapped")
                }label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(.white)
                        .font(.system(size: 20, weight: .medium, design: .default))
                        .cornerRadius(10)
                }
                Spacer()
                
                    
            }
            
        }
    }
}

#Preview {
    WeatherScreen()
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var highTemperature: Int
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16,weight: .medium,design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(highTemperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
