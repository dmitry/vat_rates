# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vat_rates/version'

Gem::Specification.new do |spec|
  spec.name          = 'vat_rates'
  spec.version       = VatRates::VERSION
  spec.authors       = ['Dmitry Polushkin']
  spec.email         = ['dmitry.polushkin@gmail.com']
  spec.summary       = %q{European VAT rates}
  spec.description   = %q{Take VAT rates from ec.europa.eu}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'nokogiri'
  spec.add_dependency 'activesupport'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
