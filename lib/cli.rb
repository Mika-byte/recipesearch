class CLI
    def start
        puts "Welcome"
        API.fetch_results
        self.recipe
    end

    def recipe
        puts "Are you looking for recipes?"
        puts "Type 'yes' to continue or any other key to exit the program"
end