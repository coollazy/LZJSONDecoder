import Foundation

struct JSONModel: Codable {
    let title: String
    let intValue: Int
    let floatValue: Float
    let doubleValue: Double
}

class JSONItem: Codable {
    let title: String
    let intValue: Int
    let floatValue: Float
    let doubleValue: Double
}
