Pod::Spec.new do |s|
  s.name = "MyTool"
  s.version = "0.1.0"
  s.summary = "\u{6d4b}\u{8bd5} tool"
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"wuzhenli"=>"zhenli@6.cn"}
  s.homepage = "https://github.com/wuzhenli/MyTool"
  s.description = "\u{6d4b}\u{8bd5} toolxxx"
  s.source = { :path => '.' }

  s.ios.deployment_target    = '8.0'
  s.ios.vendored_framework   = 'ios/MyTool.embeddedframework/MyTool.framework'
end
