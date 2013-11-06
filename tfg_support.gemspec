# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tfg/support/version'

Gem::Specification.new do |spec|
  spec.name          = "tfg_support"
  spec.version       = TFG::Support::VERSION
  spec.authors       = ["Courtney de Lautour"]
  spec.email         = ["clautour@thefrontiergroup.com.au"]
  spec.description   = %q{A collection of helper methods / extensions for Ruby}
  spec.summary       = %q{A collection of helper methods / extensions for Ruby}
  spec.homepage      = "https://github.com/thefrontiergroup/thefrontiergroup-support"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "yard"
  spec.add_development_dependency "redcarpet"
  spec.add_development_dependency "active_support"
  spec.add_development_dependency "simplecov-rcov"
  spec.add_development_dependency "rspec_junit_formatter"
end
