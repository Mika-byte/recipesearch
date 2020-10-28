class API

    def self.fetch_results
        url = "http://www.recipepuppy.com/api/"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)

        
end