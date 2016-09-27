# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple-line-icons-rails/version'

Gem::Specification.new do |spec|
  spec.name          = "simple-line-icons-rails"
  spec.version       = SimpleLineIcons::Rails::VERSION
  spec.authors       = ["JeskTop"]
  spec.email         = ["frayay@gmail.com"]
  spec.summary       = %q{I like simple-line-icons. I like the asset pipeline. I like semantic versioning. If you do too, you're welcome.}
  spec.description   = %q{an asset gemification of the simple-line-icons icon font library}
  spec.homepage      = "https://github.com/minnowlab/simple-line-icons-rails/"
  spec.license       = "MIT"

  spec.files         = Dir["{app,lib}/**/*"] + ["LICENSE.txt", "Rakefile", "README.md"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = Dir["test/**/*"]
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 3.2", "<= 5.1"

  spec.add_development_dependency "activesupport"
  spec.add_development_dependency "sass-rails"
end
