# LZJSONDecoder

The extensions of JSONDecoder

# How to install

### CocoaPods

```
pod 'LZJSONDecoder', '~> 1.0.3'
```

### SPM

- Package.swift 的 dependencies 增加

```
.package(name: "LZJSONDecoder", url: "https://github.com/coollazy/LZJSONDecoder.git", .upToNextMajor(from: "1.0.3")),
```

- target 的 dependencies 增加

```
.product(name: "LZJSONDecoder", package: "LZJSONDecoder"),
```

# How to use

### The json file from bundle resource

```
let fileName = "JSONModel.json"
let model = try? fileName.jsonBundleDecode(JSONModel.self)
```

### The json file from document resource

```
let fileName = "JSONModel.json"
let model = try? fileName.jsonFileInDocumentDecode(JSONModel.self)
```

### The json string

```
let jsonString = "JSON string here"
let model = try? jsonString.jsonStringDecode(JSONModel.self)
```

### The url with the json content

```
let model = try? url.jsonDecode(JSONModel.self)
```

### The data with the json content

```
let model = try? data.jsonDecode(JSONModel.self)
```

