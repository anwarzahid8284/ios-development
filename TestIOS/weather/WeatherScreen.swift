

import SwiftUI

struct WeatherScreen: View {
    @State private var isNight = false
    var body: some View {
        ZStack{
            BackgroundView(isNight: $isNight)
            VStack{
                CityNameView(cityName: "Cupertino , CA")
                MainWeatherView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",highTemperature: isNight ? 33 : 76)
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
                    isNight.toggle()
                }label: {
                    WeatherButtonView(title: "Change Day Time",
                                      backqroundColor: .white,
                                      forgoundColor: .blue)
                }
                Spacer()
                
                
            }
            
        }
    }
}

struct BackgroundView: View {
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue,isNight ? .gray : Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityNameView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium))
            .foregroundColor(.white)
    }
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

struct MainWeatherView: View {
    var imageName:String
    var highTemperature:Int
    var body: some View {
        VStack(spacing:0){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(highTemperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
            
        }
        .padding(.bottom,80)
    }
}

struct WeatherButtonView: View {
    var title: String
    var backqroundColor: Color
    var forgoundColor: Color
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backqroundColor)
            .foregroundColor(forgoundColor)
            .font(.system(size: 20, weight: .medium, design: .default))
            .cornerRadius(10)
    }
}


#Preview {
    WeatherScreen()
}


