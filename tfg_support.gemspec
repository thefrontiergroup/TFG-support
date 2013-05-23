# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tfg_support/version'

Gem::Specification.new do |spec|
  spec.name          = "tfg_support"
  spec.version       = TfgSupport::VERSION
  spec.authors       = ["Courtney de Lautour"]
  spec.email         = ["clautour@thefrontiergroup.com.au"]
  spec.description   = %q{A collection of helper methods / extensions for Ruby}
  spec.summary       = %q{A collection of helper methods / extensions for Ruby}
  spec.homepage      = "https://github.com/Amerdrix/TFG-support"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
