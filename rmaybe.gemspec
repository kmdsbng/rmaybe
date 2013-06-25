# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rmaybe/version'

Gem::Specification.new do |gem|
  gem.name          = "rmaybe"
  gem.version       = Rmaybe::VERSION
  gem.authors       = ["kmdsbng"]
  gem.email         = ["kameda.sbng@gmail.com"]
  gem.description   = %q{maybe monad library}
  gem.summary       = %q{maybe monad library}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
