class CLI
    def start
        puts "Welcome"
        API.fetch_results
        self.recipe
    end

    def recipe
        puts "Are you looking for recipes?"
        puts "Type 'yes' to continue or any other key to exit the program"

        user_input = gets.strip.downcase

        if user_input == "yes" || user_input == "y"
            puts "Awesome. Let's find something delicious to cook!"
            #display the recipes
            display_results
            ask_user_for_type_of_recipe
           
            sleep(2)
            puts "\n"
    
            recipe
        else 
            puts "Bye, See you later!"
        end
end