# VAT Rates

[![Build Status](https://secure.travis-ci.org/dmitry/vat_rates.png?branch=master)](http://travis-ci.org/dmitry/vat_rates) [![Gem Version](https://badge.fury.io/rb/vat_rates.png)](http://badge.fury.io/rb/vat_rates)

VAT rates based on the [ec.europa.eu](http://ec.europa.eu/taxation_customs/tic/public/vatRates/vatratesSearch.html) website list. This gem parses information on the website and provides interface to the data.

Format of the data:

    code: 'ES' [required string, ISO 3166 format country code]
    name: 'Spain' [required string, english name of the country]
    rate: 21.0 [required float, standard rate percentage]
    regions: [optional array]
      name: 'Canary Islands' [required string, name of the region in english]
      rate: 0 [required float or integer, standard rate percentage in the region, might be 0 or >= float number]
      reduced_rates: [optional hash]
        category: 'Taux intermédiaire' [required string, category of the reduced taxes]
        rate: 10.0 [required float, rate of the reduced tax in percentage]

## Installation

Add this line to your application's `Gemfile`:

    gem 'vat_rates'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vat_rates

## Usage

To get current VAT rates from ec.europa.eu, just invoke following command:

    VatRates.fetch

Load from file or fetch from server:

    VatRates.load(filepath = nil)


Save to json file:

    VatRates.save(filepath)

## Changes

### 2014-12-23 - 0.0.2

- Fetch data in JSON format from http://ec.europa.eu/taxation_customs/tic/public/vatRates/vatratesSearch.html website
- Save data in JSON file
- Load data from JSON file or by fetching from the website

## Alternatives and more information

- http://ec.europa.eu/taxation_customs/taxation/vat/how_vat_works/index_en.htm - official information about VAT
- http://ec.europa.eu/taxation_customs/taxation/vat/how_vat_works/telecom/index_en.htm - official information about VAT 2015 changes
- http://rachelandrew.github.io/eu-vat/ - information about the VAT 2015 changes
- https://github.com/staaky/vatrates - PHP, JS and JSON versions of VAT rates (without regions)
- https://github.com/modmore/euvatrates.com - JSON version of VAT rates (without regions)
- https://github.com/kdeldycke/vat-rates - VAT rates with history and regions in CSV
- https://github.com/adamcooke/vat-rates - Ruby library to provide VAT rates for all EU countries in DSL format

## Contributing

1. Fork it ( https://github.com/dmitry/vat_rates/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
