//
//  WeatherDataModel.swift
//  Clima
//
//  Created by Caio Hideki Martins Alves Mori on 03/08/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let coord: Coord
    let weather: [Weather]
    let base: String
    let main: Main
    let visibility: Int
    let wind: Wind
    let clouds: Clouds
    let dt: Int
    let sys: Sys
    let timezone: Int
    let id: Int
    let name: String
    let cod: Int
}

struct Coord: Decodable {
    let lon: Double
    let lat: Double
}

struct Weather: Decodable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}

struct Main: Decodable {
    let temp: Double
    let feels_like: Double
    let temp_min: Double
    let temp_max: Double
    let pressure: Int
    let humidity: Int
    let sea_level: Int
    let grnd_level: Int
}

struct Wind: Decodable {
    let speed: Double
    let deg: Int
    let gust: Double
}

struct Clouds: Decodable {
    let all: Int
}

struct Sys: Decodable {
    let country: String
    let sunrise: Int
    let sunset: Int
}

