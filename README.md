# VAT Rates

VAT rates based on the [ec.europa.eu](http://ec.europa.eu/taxation_customs/tic/public/vatRates/vatratesSearch.html) website list. This gem parses data on the page, and provides interface to those data.

## Installation

Add this line to your application's `Gemfile`:

    gem 'vat_rates'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vat_rates

## Usage

To get current VAT rates from ec.europa.eu, just invoke following command:

    VatRates::Fetcher.get

## Contributing

1. Fork it ( https://github.com/dmitry/vat_rates/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
