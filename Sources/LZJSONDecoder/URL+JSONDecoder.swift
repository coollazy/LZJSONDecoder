import Foundation

extension URL {
    public func jsonDecode<T>(_ type: T.Type) throws -> T where T : Decodable {
        try Data(contentsOf: self).jsonDecode(type)
    }
}
