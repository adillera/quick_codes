# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'quick_codes/version'

Gem::Specification.new do |spec|
  spec.name          = "quick_codes"
  spec.version       = QuickCodes::VERSION
  spec.authors       = ["Alfonso Juan Dillera"]
  spec.email         = ["alfonsojuan@dillera.com"]

  spec.summary       = %q{Overloads some ruby classes to add functionality to them.}
  spec.description   = %q{Additional codes to make computation or general programming easier}
  spec.homepage      = "https://github.com/adillera/quick_codes"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "codeclimate-test-reporter"
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
