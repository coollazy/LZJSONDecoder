import Foundation

extension Data {
    public func jsonDecode<T>(_ type: T.Type) throws -> T where T : Decodable {
        try JSONDecoder().decode(type, from: self) as T
    }
}
