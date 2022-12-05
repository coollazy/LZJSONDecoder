import Foundation

public enum StringJSONDecoderError: Error {
    case notFoundInBundle
    case jsonStringToDataFailed
    case decodeFailed
}

extension String {
    public func jsonBundleDecode<T>(_ type: T.Type) throws -> T where T : Decodable {
        guard let url = Bundle.main.url(forResource: self, withExtension: nil) else {
            throw StringJSONDecoderError.notFoundInBundle
        }
        guard let res = try? url.jsonDecode(type) else {
            throw StringJSONDecoderError.decodeFailed
        }
        return res
    }
    
    public func jsonStringDecode<T>(_ type: T.Type) throws -> T where T : Decodable {
        guard let data = data(using: .utf8) else {
            throw StringJSONDecoderError.jsonStringToDataFailed
        }
        return try data.jsonDecode(type)
    }
}
