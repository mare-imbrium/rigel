# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rigel/version'

Gem::Specification.new do |spec|
  spec.name          = "rigel"
  spec.version       = Rigel::VERSION
  spec.authors       = ["kepler"]
  spec.email         = ["githubkepler.50@gishpuppy.com"]
  spec.summary       = %q{ruby documentation browser in terminal (text/ncurses)}
  spec.description   = %q{Ruby documentation (ri) browser in text terminals using ncurses}
  spec.homepage      = "https://github.com/mare-imbrium/rigel"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", ">= 0.9.6"
  spec.add_runtime_dependency "canis", ">= 0.0.3", ">= 0.0.3"
end
