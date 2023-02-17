//
//  SearchView.swift
//  WeatherApp
//
//  Created by Pubudu Mihiranga on 2023-02-17.
//

import SwiftUI

struct SearchView: View {
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
                        // button action
                    } label: {
                        Text("Search")
                    }

                }
                
                HStack {
                    WeatherConditionView(image: "aqi.low", title: "Broken Clouds", subtile: "Current Status")
                    
                    WeatherConditionView(image: "thermometer.low", title: "26.5", subtile: "Temperature")
                }
                
                HStack {
                    WeatherConditionView(image: "humidity", title: "65.0", subtile: "Humidity")
                    
                    WeatherConditionView(image: "tornado", title: "1026.5", subtile: "Pressure")
                }
                
                HStack {
                    WeatherConditionView(image: "sun.dust.fill", title: "1000.0", subtile: "Visibility")
                    
                    WeatherConditionView(image: "wind", title: "26.5", subtile: "Wind Speed")
                }
                
                HStack {
                    WeatherConditionView(image: "cloud.fill", title: "26.5", subtile: "Clouds (%)")
                    
                    Spacer()
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
