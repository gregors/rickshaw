# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rickshaw/version'

Gem::Specification.new do |spec|
  spec.name          = "rickshaw"
  spec.version       = Rickshaw::VERSION
  spec.authors       = ["Gregory Ostermayr"]
  spec.email         = ["gregory.ostermayr@gmail.com"]
  spec.description   = %q{Get SHA1 and other hashes easily}
  spec.summary       = %q{Get SHA1 and other hashes easily}
  spec.homepage      = "https://github.com/gregors/rickshaw"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
