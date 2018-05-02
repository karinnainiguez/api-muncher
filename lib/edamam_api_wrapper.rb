require 'httparty'
require 'pry'

class EdamamApiWrapper
  BASE_URL = "https://api.edamam.com"
  EDAMID = ENV["EDAMAM_ID"]
  KEY = ENV["EDAMAM_KEY"]


  def self.search(query)
    url = URI.encode("#{BASE_URL}/search?q=#{query}&app_id=#{EDAMID}&app_key=#{KEY}")

    response = HTTParty.get(url)

    if response["count"] && response["count"] > 0
      Recsearch.from_api(response)

    else

    end

  end



end