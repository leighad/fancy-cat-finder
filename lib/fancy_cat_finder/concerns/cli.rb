class FancyCatFinder::CLI 
    attr_accessor :cat_names

    def start
        # welcome user
        puts ""
        puts "   Welcome to Fancy Cat Finder!"
        puts ""
        # render_ascii_welcome
        puts "  ^   =   ^   =   ^     =   ^   =   ^ " 
        puts " / \\ / \\ / \\ / \\ / \\   / \\ / \\ / \\ / \\ "
        puts "( F ) A ) N ) C ) Y ) ( C ) A ) T ) S )"
        puts " \\_/ \\_/ \\_/ \\_/ \\_/   \\_/ \\_/ \\_/ \\_/ "
        puts ""
        # puts "...please be patient while we collect the fancy cats..."
        # puts "" 

        # 1st scrape
        # FancyCatFinder::Scraper.scrape_cats
        # may need to change to order here a bit
        
        main_menu
        
        get_user_input

        # list_names
    end

    # def render_ascii_welcome
    #     File.readlines("fancy_welcome.txt") do |line|
    #         puts line
    #     end
    # end
    ###### need to figure out how to use this ######
    # need "fancy_welcome.txt" file...

    def main_menu
        # puts "Enter the number of your selection:"
        puts "1. List all fancy cats"
        #user can then select individual cat for more details
        #2nd scrape
        #like history and personality
        puts "2. List fancy cats by affection level"
        #user can then select most/least
        #data will be stored from scrape
        puts "3. List fancy cats by energy level"
        #user can then select most/least
        #data will be stored from scrape
        puts "4. List fancy cats by shedding level"
        #user can then select most/least
        #data will be stored from scrape
        puts "5. Just for fun: random cat facts"
        #will generate a random cat fact from API request hopefully
        puts "6. To quit Fancy Cat Finder"
        #to quit/exit program
        puts nil 
        # get_user_input
    end

    def get_user_input
        puts "Enter the number of your selection:"
        input = gets.strip.to_i 
        # should quit go first?

        if input.between?(1,5)
            #continue to run
            puts "...please be patient while we collect the fancy cats..."
            puts "" 
            FancyCatFinder::Scraper.scrape_cats #
            
            #unless FancyCatFinder::Scraper.scrape_cats ????????????
            respond_to_user_input(input)

        elsif input == 6 #|| input.to_s.downcase == 'bye'
            puts "See you next time. Adopt a shelter pet today!"
            puts ""
            #exit program
        else
            puts "Invalid entry! Please try again."
            puts ""
            get_user_input      #recursion
        end
    end

    def respond_to_user_input(input)
        case input
        when 1
            list_names
            puts ""
            puts "Enter the number next to the cat you wish to view."
            current_cat = gets.strip.to_i 
            puts "You selected #{@name}"
            #need build method to go into 2nd scrape here?

        when 2
            #can either return list of highest and lowest
            #or allow user to enter to choose
        when 3

        when 4

            # main_menu
            # get_user_input
        when 5
            #puts sample from array of cat facts
            puts FancyCatFinder::Scraper.random_cat_fact
            puts ""
            # main_menu
            # get_user_input
            ##how to keep adding to the scraped cats list? 50 + 50 etc...
        else
            get_user_input
        end

    end

    ##where does the case statement go?##

    # input = gets.strip
    # index = input_to_i - 1
    # if index.between(1..50)
    # current_cat = list_names[index] ??
    # go to current_cat via link 2nd scrape
    # 

    
    def list_names
        FancyCatFinder::Cat.all.each.with_index(1) do |cat, idx|
            puts "#{idx}: #{cat.name}"
        end
    end

        
    def random_cat_fact
        @cat_facts.sample 
    end

end

    # print cat_names
    # def get_names 
    #     @cat_names = FancyCatFinder::Cat.all.each {|element| element.text}
    # end

    # class WorldsBestRestaurants::CLI

    #     def call
    #       WorldsBestRestaurants::Scraper.new.make_restaurants
    #       puts "Welcome to the 50 Best Restaurants in the World"
    #       start
    #     end
      
    #     def start
    #       puts ""
    #       puts "What number restaurants would you like to see? 1-10, 11-20, 21-30, 31-40 or 41-50?"
    #       input = gets.strip.to_i
      
    #       print_restaurants(input)
      
    #       puts ""
    #       puts "What restaurant would you like more information on?"
    #       input = gets.strip
      
    #       restaurant = WorldsBestRestaurants::Restaurant.find(input.to_i)
      
    #       print_restaurant(restaurant)
      
    #       puts ""
    #       puts "Would you like to see another restaurant? Enter Y or N"
      
    #       input = gets.strip.downcase
    #       if input == "y"
    #         start
    #       elsif input == "n"
    #         puts ""
    #         puts "Thank you! Have a great day!"
    #         exit
    #       else
    #         puts ""
    #         puts "I don't understand that answer."
    #         start
    #       end
    #     end
      
    #     def print_restaurant(restaurant)
    #       puts ""
    #       puts "----------- #{restaurant.name} - #{restaurant.position} -----------"
    #       puts ""
    #       puts "Location:           #{restaurant.location}"
    #       puts "Head Chef:          #{restaurant.head_chef}"
    #       puts "Style of Food:      #{restaurant.food_style}"
    #       puts "Standout Dish:      #{restaurant.best_dish}"
    #       puts "Contact:            #{restaurant.contact}"
    #       puts "Website:            #{restaurant.website_url}"
    #       puts ""
    #       puts "---------------Description--------------"
    #       puts ""
    #       puts "#{restaurant.description}"
    #       puts ""
    #     end
      
    #     def print_restaurants(from_number)
    #       puts ""
    #       puts "---------- Restaurants #{from_number} - #{from_number+9} ----------"
    #       puts ""
    #       WorldsBestRestaurants::Restaurant.all[from_number-1, 10].each.with_index(from_number) do |restaurant, index|
    #         puts "#{index}. #{restaurant.name} - #{restaurant.location}"
    #       end
    #     end
      
    #   end
    