require "json"
require "open-uri"

url = "https://coderbyte.com/api/challenges/json/age-counting"
data = JSON.parse(URI.open(url).read)

array_data = data["data"].split(",")

counter = 0

array_data.each_with_index do |element, index|
  if index.odd? && element.partition("=").last.to_i >= 50
    counter += 1
  end
end

puts counter
