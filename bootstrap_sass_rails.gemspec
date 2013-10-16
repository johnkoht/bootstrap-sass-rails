# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootstrap_sass_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "bootstrap_sass_rails"
  spec.version       = BootstrapSassRails::VERSION
  spec.authors       = ["John Koht"]
  spec.email         = ["john@kohactive.com"]
  spec.description   = "Bootstrap Sass for Rails Asset Pipeline"
  spec.summary       = "Bootstrap Sass for Rails Asset Pipeline"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "sass", ">= 3.0"
  spec.add_dependency "font_awesome_rails_sass"
end
