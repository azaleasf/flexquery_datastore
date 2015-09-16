# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flexquery_datastore/version'

Gem::Specification.new do |spec|
  spec.name          = "flexquery_datastore"
  spec.version       = FlexqueryDatastore::VERSION
  spec.authors       = ["Eli Shkurkin"]
  spec.email         = ["eshkurkin@gmail.com"]

  spec.summary       = %q{A Ruby Gem to interface with a FlexQuery DataStore instance.}
  spec.description   = %q{This gem is for the DataStore product offered by FlexQuery (flexquery.com).
    It provides an ORM layer on top of the DataStore database.}
  spec.homepage      = "https://github.com/azaleasf/flexquery_datastore"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.3"

  spec.add_runtime_dependency "data_mapper", "~> 1.2"
  spec.add_runtime_dependency "dm-postgres-adapter", "~> 1.2"
end
