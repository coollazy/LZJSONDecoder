import Foundation

extension String {
    public enum JSONDecoderError: Error {
        case notFoundInBundle
        case notFoundInDocument
        case jsonStringToDataFailed
        case decodeFailed
    }
    
    public func jsonFileInDocumentDecode<T>(_ type: T.Type, decoder: JSONDecoder = JSONDecoder()) throws -> T where T : Decodable {
        guard let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first?.appendingPathComponent(self) else {
            throw JSONDecoderError.notFoundInDocument
        }
        guard FileManager.default.fileExists(atPath: url.path) else {
            throw JSONDecoderError.notFoundInDocument
        }
        guard let obj = try? url.jsonDecode(type, decoder: decoder) else {
            throw JSONDecoderError.decodeFailed
        }
        return obj
    }
    
    public func jsonBundleDecode<T>(_ type: T.Type, decoder: JSONDecoder = JSONDecoder()) throws -> T where T : Decodable {
        guard let url = Bundle.main.url(forResource: self, withExtension: nil) else {
            throw JSONDecoderError.notFoundInBundle
        }
        guard let obj = try? url.jsonDecode(type, decoder: decoder) else {
            throw JSONDecoderError.decodeFailed
        }
        return obj
    }
    
    public func jsonStringDecode<T>(_ type: T.Type, decoder: JSONDecoder = JSONDecoder()) throws -> T where T : Decodable {
        guard let data = data(using: .utf8) else {
            throw JSONDecoderError.jsonStringToDataFailed
        }
        return try data.jsonDecode(type, decoder: decoder)
    }
}
