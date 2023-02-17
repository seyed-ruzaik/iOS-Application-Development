//
//  NetworkStore.swift
//  WeatherApp
//
//  Created by Pubudu Mihiranga on 2023-02-17.
//

import Foundation

class NetworkStore: ObservableObject {
    
    @Published var weatherData: WeatherDataModel?
    
    private var baseURL = "https://api.openweathermap.org/data/2.5/weather?appid=\(APIConstants.KEY)&units=metric"
    
    // https://api.openweathermap.org/data/2.5/weather?appid=\(APIConstants.KEY)&units=metric&q=new%20york
    func fetchData(cityName: String) async {
        // String URL
        var urlString = "\(baseURL)&q=\(cityName)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        
        // URL
        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            return
        }
        
        // URLSession
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            // Decode
            let decodableData = try JSONDecoder().decode(WeatherDTO.self, from: data)
            
            DispatchQueue.main.async {
                self.weatherData = WeatherDataModel(name: decodableData.name,
                                                    description: decodableData.weather[0].description.capitalized,
                                               temp: decodableData.main.temp,
                                               pressure: decodableData.main.pressure,
                                               humidity: decodableData.main.humidity,
                                               feelsLike: decodableData.main.feelsLike,
                                               visibility: decodableData.visibility,
                                               windSpeed: decodableData.wind.speed,
                                               cloudPrecentage: decodableData.clouds.all)
            }
        } catch {
            print("Error")
        }
    }
}
