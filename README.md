# LZJSONDecoder

The extensions of JSONDecoder

# How to install

### CocoaPods

```
pod 'LZJSONDecoder', '~> 1.0.2'
```

### SPM

- Package.swift 的 dependencies 增加

```
.package(name: "LZJSONDecoder", url: "https://github.com/coollazy/LZJSONDecoder.git", .upToNextMajor(from: "1.0.2")),
```

- target 的 dependencies 增加

```
.product(name: "LZJSONDecoder", package: "LZJSONDecoder"),
```

# How to use

### The json file from bundle resource

```
let model = try? "JSONModel.json".jsonBundleDecode(JSONModel.self)
```

### The json string

```
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

