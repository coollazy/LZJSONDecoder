# LZJSONDecoder

The extensions of JSONDecoder

# How to install

### cocoapod

```
pod 'LZJSONDecoder', '~> 1.0.0'
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

