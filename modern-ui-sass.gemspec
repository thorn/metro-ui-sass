# -*- encoding: utf-8 -*-
require File.expand_path('../lib/metro-ui-sass/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["thorn"]
  gem.email         = ["notdefined@list.ru"]
  gem.summary       = %q{Modern UI ready to drop into Rails}
  gem.homepage      = "http://github.com/thorn/metro-ui-sass"
  gem.license       = "Apache 2.0"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "metro-ui-sass"
  gem.require_paths = ["lib"]
  gem.version       = MetroUI::VERSION

  gem.add_development_dependency 'sass',   '>= 3.2'
  gem.add_runtime_dependency 'sass-rails', '>= 3.2'
end
