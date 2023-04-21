//
//  SearchView.swift
//  WeatherApp
//
//  Created by Seyed Ruzaik on 2023-02-17.
//

import SwiftUI

struct SearchView: View {
    
    @StateObject var networkStore = NetworkStore()
    @State var cityName: String = ""
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Weather")
                    .font(.largeTitle)
                    .bold()
                
                HStack {
                    TextField("City Name", text: $cityName)
                        .textFieldStyle(.roundedBorder)
                    
                    Button {
                        guard !cityName.isEmpty else { return }
                        
                        print("dev test fetching data")
                        
                        Task {
                            await networkStore.fetchData(cityName: cityName)
                        }
                    } label: {
                        Text("Search")
                    }

                }
                
                if let data = networkStore.weatherData {
                    HStack {
                        WeatherConditionView(image: "aqi.low", title: "\(data.description)", subtile: "Current Status")
                        
                        WeatherConditionView(image: "thermometer.low", title: "\(data.formattedTemp)", subtile: "Temperature")
                    }
                    
                    HStack {
                        WeatherConditionView(image: "humidity", title: "\(data.humidity)", subtile: "Humidity")
                        
                        WeatherConditionView(image: "tornado", title: "\(data.pressure)", subtile: "Pressure")
                    }
                    
                    HStack {
                        WeatherConditionView(image: "sun.dust.fill", title: "\(data.visibility)", subtile: "Visibility")
                        
                        WeatherConditionView(image: "wind", title: "\(data.windSpeed)", subtile: "Wind Speed")
                    }
                    
                    HStack {
                        WeatherConditionView(image: "cloud.fill", title: "\(data.cloudPrecentage)", subtile: "Clouds (%)")
                        
                        Spacer()
                    }
                }
            }
            .padding()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

struct WeatherConditionView: View {
    var image: String
    var title: String
    var subtile: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: UIScreen.main.bounds.width * 0.45, height: 200)
                .foregroundColor(.gray)
                .opacity(0.4)
            
            VStack(spacing: 20) {
                Image(systemName: image)
                    .font(.system(size: 50))
                
                Text(title)
                    .font(.system(size: 20))
                    .bold()
                
                Text(subtile)
            }
        }
    }
}
