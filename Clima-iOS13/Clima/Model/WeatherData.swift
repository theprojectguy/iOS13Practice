//
//  WeatherData.swift
//  Clima
//
//  Created by Valentin Mille on 01/12/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

// Make the properties data match with the properties of the json file
struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let id: Int
}
