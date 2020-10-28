require 'pry'
require 'net/http'
require 'json'

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
        def display_results
            # Access all resutls
            binding.pry
            Result.all.each.with_index(1) do |result, index|
                puts "#{index}. #{result.title}"
    end 
  end
  def ask_user_for_type_of_recipe
    puts "Enter the number of the recipe you'd like to know more about"
    index = gets.strip.to_i - 1

    # index valid? number between 0 and 6
    until index.between?(0, Result.all.length - 1)
        # keep asking for user input
        puts "Sorry invalid. Choose a valid number"
        index = gets.strip.to_i - 1
  end

  result_instance = Result.all[index]
       
    display_recipe_details(result_instance)
 end


 def display_recipe_details(result)
    sleep(1)
    puts "\n"
    puts result.title
    puts "Title: " + result.title
    puts "Ingredients: " + results.ingredients
    puts "Thumbnail: " + results.thumbnail
end
end