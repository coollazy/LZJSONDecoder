Pod::Spec.new do |s|
  s.name          = "LZJSONDecoder"
  s.version       = "1.0.0"
  s.swift_version = "5.0.0"
  s.summary       = "LZJSONDecoder"
  s.description   = <<-DESC
                     The extensions of JSONDecoder.
                     DESC

  s.homepage      = "https://github.com/venwu1984/LZJSONDecoder"
  s.license       = "MIT"
  s.author        = { "ven.wu" => "ven.wu.github@gamil.com" }
  s.platform      = :ios, "10.0"
  s.source        = { :git => "https://github.com/venwu1984/LZJSONDecoder.git", :tag => s.version }
  s.source_files  = "Classes/**/*.{swift}"
end
