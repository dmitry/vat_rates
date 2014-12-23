# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vat_rates/version'

Gem::Specification.new do |spec|
  spec.name          = 'vat_rates'
  spec.version       = VatRates::VERSION
  spec.authors       = ['Dmitry Polushkin']
  spec.email         = ['dmitry.polushkin@gmail.com']
  spec.summary       = %q{VAT rates for european countries based on the ec.europa.eu website}
  spec.description   = %q{VAT rates based on the ec.europa.eu website list. This gem parses information on the website and provides interface to the data}
  spec.homepage      = 'https://github.com/dmitry/vat_rates'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'nokogiri'
  spec.add_dependency 'oj'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
