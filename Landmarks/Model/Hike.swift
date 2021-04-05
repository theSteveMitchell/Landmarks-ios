//
//  Hike.swift
//  Landmarks
//
//  Created by Steve Mitchell on 4/3/21.
//

import Foundation

struct Hike: Codable, Hashable, Identifiable {
    var name: String
    var id: Int
    var difficulty: Int
    var distance: Double
    var observations: [Observation]
    
    static var formatter = LengthFormatter()
    
    var distanceText: String {
        return Hike.formatter.string(fromValue: distance, unit: .kilometer)
    }
    
    struct Observation: Codable, Hashable {
        var distanceFromStart: Double
        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
    }
}
