require 'open-uri'
require 'nokogiri'

module VatRates
  class Fetcher
    URL = 'http://ec.europa.eu/taxation_customs/tic/public/vatRates/vatratesSearch.html'

    class << self
      def get
        html = open(URL)

        doc = Nokogiri::HTML(html)

        data = []

        content = doc.css('#tic-content').first

        content.children.each do |child|
          if child.name == 'h2'
            code, name = child.text.split(' - ')

            data << {
              code: code,
              name: name,
              rate: normalize_rate(child.next.next.next.next.css('td')[1].text)
            }
          elsif child.name == 'h4'
            data.last[:regions] ||= []
            region = {
              name: child.text
            }

            standard = child.next.next.next.next

            if standard.text.include?('No Standard Rate')
              region[:rate] = 0
            else
              region[:rate] = normalize_rate(standard.css('td')[1].text)
            end

            reduced = standard.next.next.next.next.next.next

            unless reduced.text.include?('No information available')
              reduced.css('tr')[1..-1].each do |row|
                columns = row.css('td')
                region[:reduced_rates] = {
                  category: columns[0].text,
                  rate: normalize_rate(columns[1].text)
                }
              end
            end

            data.last[:regions] << region
          end
        end

        data
      end

      def normalize_rate(number)
        number.sub(',', '.').gsub(/[% ]/, '').to_f
      end
    end
  end
end