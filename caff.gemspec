# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'caff/version'

Gem::Specification.new do |gem|
  gem.name          = "caff"
  gem.version       = Caff::VERSION
  gem.authors       = ["Mark Ryall"]
  gem.email         = ["mark@ryall.name"]
  gem.description   = %q{simple utility to turn caffeine on or off}
  gem.summary       = %q{uses applescript to turn the caffeine mac os x utility on and off}
  gem.homepage      = "http://github.com/markryall/caff"
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end