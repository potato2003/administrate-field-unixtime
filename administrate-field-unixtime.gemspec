lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "administrate-field-unixtime"
  spec.version       = "0.0.1"
  spec.authors       = ["potato2003"]
  spec.email         = ["potato2003@gmail.com"]

  spec.summary       = "A plugin to show and edit unixtime field within Administrate."
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/potato2003/administrate-field-unixtime"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'administrate'
  spec.add_runtime_dependency 'rails', '>= 5.0', '< 6.0'
end