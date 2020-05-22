# Write your code here
class GetRequester

URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

def initialize(url)
  URL = url
end

  def get_response_body
    uri = URI.parse(URL)
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
