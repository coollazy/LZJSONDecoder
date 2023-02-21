import Foundation

extension Data {
    public func jsonDecode<T>(_ type: T.Type, decoder: JSONDecoder = JSONDecoder()) throws -> T where T : Decodable {
        try decoder.decode(type, from: self) as T
    }
}
