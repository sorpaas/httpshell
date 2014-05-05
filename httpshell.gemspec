# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'httpshell/version'

Gem::Specification.new do |spec|
  spec.name          = "httpshell"
  spec.version       = Httpshell::VERSION
  spec.authors       = ["sorpa'as plat"]
  spec.email         = ["me@sorpaas.com"]
  spec.summary       = %q{Shell console specificly for http request. }
  spec.description   = %q{A simple shell console for running http request. }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.executables   = ["httpshell"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
