
require 'pry'
require 'net/http'
require 'json'

class API

    def self.fetch_results
        url = "http://www.recipepuppy.com/api/"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        binding.pry
        array_of_results = hash["results"]
        result.title = result_hash["title"]
            result.ingredients = result_hash["ingredients"]
            result.thumbnail = result_hash["thumbnail"]
    end
end