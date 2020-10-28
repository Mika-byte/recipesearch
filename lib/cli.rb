require 'pry'
require 'net/http'
require 'json'

class CLI
    def start
        puts "Welcome"
        API.fetch_results
        self.result
    end

end