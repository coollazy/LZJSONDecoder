import UIKit
import LZJSONDecoder

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Decode the json file from bundle resource
        if let model = try? "JSONModel.json".jsonBundleDecode(JSONModel.self) {
            print("Decode JSONModel.json to JSONModel object => \(model)")
        }
        else {
            print("Decode JSONModel.json failed")
        }
    
        
        // Decode the json string
        let jsonString =
        """
        {
            "title": "This is json model",
            "intValue": 123456789,
            "floatValue": 12345678.9,
            "doubleValue": 1.23456789,
        }
        """
        if let model = try? jsonString.jsonStringDecode(JSONModel.self) {
            print("Decode jsonString to JSONModel object => \(model)")
        }
        else {
            print("Decode jsonString failed")
        }
        
        
        // Decode the url
        let url = Bundle.main.url(forResource: "JSONModel", withExtension: "json")
        if let model = try? url?.jsonDecode(JSONModel.self) {
            print("Decode url to JSONModel object => \(model)")
        }
        else {
            print("Decode url failed")
        }
        
        
        // Decode the json data
        let data = """
        {
            "title": "This is json model",
            "intValue": 123456789,
            "floatValue": 12345678.9,
            "doubleValue": 1.23456789,
        }
        """.data(using: .utf8)
        if let model = try? data?.jsonDecode(JSONModel.self) {
            print("Decode json data to JSONModel object => \(model)")
        }
        else {
            print("Decode json data failed")
        }
    }
}

