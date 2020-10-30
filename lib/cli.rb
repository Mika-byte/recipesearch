require 'pry'
require 'net/http'
require 'json'

class CLI

    def start
        puts "Hi there!"
        API.fetch_results
        self.search
    end

    def search 
      
        puts "Are you searching recipe ideas today?"
        puts "Type 'yes' to continue or press any other key to escape"

        user_input = gets.strip.downcase

        # if the user says yes


        if user_input == "yes" || user_input == "y"
            puts "Let's find you something great to cook today! "
            # display recipe list
            display_recipes
            ask_user_for_recipe_choice

            sleep(2)
            puts "\n"

            search 
        else 
            puts "Ok, Goodbye"
        end

    end 

    def display_recipes
          # display all the results
      # binding.pry
      #output each one 
        Result.all.each.with_index(1) do |result, index|
            puts "#{index}. #{result.title}"
        end 
    end

    def ask_user_for_recipe_choice
        # ask user for choice
        puts "Enter the number of the recipe you'd like to know more about"
        index = gets.strip.to_i - 1

        # index valid? number between 0 and 6
        until index.between?(0, Result.all.length - 1)
            # keep asking for user input
            puts "Sorry invalid. Choose a valid number"
            index = gets.strip.to_i - 1
        end
        
        result_instance = Result.all[index]
       
        display_result_details(result_instance)
    end 

    def display_result_details(result)
        sleep(1)
        puts "\n"
        puts result.title
        puts "Ingredients: " + result.ingredients
        puts "Thumbnail: " + result.thumbnail
       
    end

end