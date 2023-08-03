//
//  WeatherManagerModel.swift
//  Clima
//
//  Created by Caio Hideki Martins Alves Mori on 03/08/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    private let apiKey = ProcessInfo.processInfo.environment["API_KEY"] ?? ""
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather"
    
    func fetchWeather(cityName: String) {
        if let encodedCityName = cityName.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) {
                let urlString = "\(weatherURL)?APPID=\(apiKey)&q=\(encodedCityName)&units=metric"
                performRequest(urlString: urlString)
            }
    }
    
    
    func performRequest(urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url, completionHandler: handle)
            
            task.resume()
        }
        
    }
    
    func handle(data: Data?, response: URLResponse?, error: Error?) -> Void {
        if error != nil {
            print(error!)
            return
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString!)
        }
    }
}
