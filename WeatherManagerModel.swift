//
//  WeatherManagerModel.swift
//  Clima
//
//  Created by Caio Hideki Martins Alves Mori on 03/08/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "http://api.openweathermap.org/data/2.5/weather?APPID=2b5429bc671d29a573dfdcc9cde3aa3f&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
    }
    
}
