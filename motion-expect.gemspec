# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "motion-expect"
  spec.version       = "2.0.0"
  spec.authors       = ["Ignacio Piantanida", "Lori Olson"]
  spec.email         = ["lori@wndx.com"]
  spec.description   = "RSpec's expect syntax in MacBacon"
  spec.summary       = "Bring RSpec 3.0 expect syntax to MacBacon"
  spec.homepage      = "https://github.com/rubymotion-community/motion-expect"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 13.0"
end
