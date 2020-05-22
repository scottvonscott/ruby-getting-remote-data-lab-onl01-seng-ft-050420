# Write your code here
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
    parsed.collect do |data|
      data["structures"]
  end
end

# body = GetRequester.new.get_response_body
# puts body

end
