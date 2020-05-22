require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class GetRequester


def initialize(url)
  @url = url
end

  def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    parsed = JSON.parse(self.get_response_body)
    binding.pry
    parsed.collect do |name|
      name
  end
end

# body = GetRequester.new.get_response_body
# puts body

end
