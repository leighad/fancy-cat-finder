class FancyCatFinder::CLI 
    def start
        welcome_user 
        sleep(2)
        list_options
        main_menu
        goodbye
    end

    def welcome_user
        puts ""
        puts "   Welcome to the Fancy Cat Finder!".colorize(:cyan)
        puts ""
        # render_ascii_welcome
        puts "    ^   =   ^   =   ^     =   ^   =   ^ " 
        puts "   / \\ / \\ / \\ / \\ / \\   / \\ / \\ / \\ / \\ "
        puts "  ( F ) A ) N ) C ) Y ) ( C ) A ) T ) S )".colorize(:magenta)
        puts "   \\_/ \\_/ \\_/ \\_/ \\_/   \\_/ \\_/ \\_/ \\_/ "
        puts ""
        puts "...please be patient while we gather the Fancy Cats..."
        puts ""
        FancyCatFinder::Cat.get_cats
    end

    def list_options
        puts ""
        puts "Here is the Fancy Cat main menu:".colorize(:cyan)
        puts "1. List all Fancy Cats"
        puts "2. Random Fancy Cat fact"
        puts "3. Random Fancy Cat history"
        puts "**type 'exit' at any time to quit Fancy Cats**".colorize(:magenta)
        puts ""
    end

    def main_menu
        input = nil
        if input == 'exit'
            goodbye
        end

        while input != 'exit'
            puts "Enter a number from the main menu, type 'menu' for main menu, or type 'exit' to quit:"
            puts ""
            input = gets.strip.downcase
            case input
            when '1'
                puts "Here is a list of Fancy Cats:".colorize(:cyan)
                list_names
                puts ""
                choose_cat
                puts ""
            when '2'
                puts "Fancy Cat fact generator!".colorize(:cyan)
                puts ""
                puts FancyCatFinder::Cat.random_cat_fact.colorize(:light_green)
                puts ""
            when '3'
                puts "Fancy Cat history generator!".colorize(:magenta)
                puts ""
                puts FancyCatFinder::Cat.random_cat_info.colorize(:light_magenta)
                puts ""
            when 'menu' 
                list_options
            else
                error unless input == 'exit'
                # puts "Please enter a number from the main menu, type 'menu' for main menu, or type 'exit' to quit:" unless input == 'exit'
                puts ""
            end
        end
    end

    def choose_cat
        all_cats = FancyCatFinder::Cat.all
        num = all_cats.size
        # puts "Enter the number (1 to #{num}) next to the cat you wish to view:"
        puts "Please enter the number next to the Fancy Cat you wish to know more about:".colorize(:cyan) 

        input = gets.strip
        current_idx = input.to_i

        if input.downcase == 'exit'
            goodbye
        end

        if current_idx.between?(1, num)
            current_cat = all_cats[current_idx - 1]
            puts "You selected Fancy Cat ##{input}: the #{current_cat.name}. Great choice!".colorize(:magenta)  
            choose_info(current_cat)
        elsif input.downcase == "menu"
            main_menu
        else
            error
        end
        
    end

    def choose_info(cat)
        puts ""
        puts "Enter #{'1'.colorize(:magenta)} for an overview or #{'2'.colorize(:magenta)} to read a fact about the #{cat.name.colorize(:magenta)}:"
        puts ""
        puts "Don't forget! You can always type 'menu' for main menu, or 'exit' to quit.".colorize(:cyan)
        input = gets.strip

        case input.downcase
        when "1"
            puts cat.info.colorize(:light_green)
            choose_info(cat)
        when "2"
            puts cat.fact.colorize(:light_magenta)
            choose_info(cat)
        when "exit"
            goodbye
        when "menu"
            list_options
        else
            error
            choose_info(cat)
        end
    end

    def error
        puts "Invalid entry!".colorize(:cyan)
    end

    def list_names
        FancyCatFinder::Cat.all.each.with_index(1) do |cat, idx|
            puts "#{idx}: #{cat.name}"
        end
    end

    def goodbye
        puts "Thanks for visiting- Adopt a shelter cat today!".colorize(:cyan)
        puts ""
        puts "                  /\\_/\\"
        puts "                 ( o.o )"
        puts "                  > ^ <"
        puts ""
        exit
    end
end


# def render_ascii_welcome
#     File.readlines("fancy_welcome.txt") do |line|
#         puts line
#     end
# end
###### need to figure out how to use this ######
# need "fancy_welcome.txt" file...


# def main_menu
    #     # puts "Enter the number of your selection:"
    #     puts "1. List all fancy cats"
    #     #user can then select individual cat for more details
    #     #2nd scrape
    #     #like history and personality
    #     puts "2. List fancy cats by affection level"
    #     #user can then select most/least
    #     #data will be stored from scrape
    #     puts "3. List fancy cats by energy level"
    #     #user can then select most/least
    #     #data will be stored from scrape
    #     puts "4. List fancy cats by shedding level"
    #     #user can then select most/least
    #     #data will be stored from scrape
    #     puts "5. Just for fun: random cat facts"
    #     #will generate a random cat fact from API request hopefully
    #     puts "6. To quit Fancy Cat Finder"
    #     #to quit/exit program
    #     puts nil 
    #     # get_user_input
    # end

    # def get_user_input
    #     puts "Enter the number of your selection:"
    #     input = gets.strip.to_i 
    #     # should quit go first?

    #     #while input != 'exit'
    #     if input.between?(1,5)
    #         #continue to run
    #         puts "...please be patient while we collect the fancy cats..."
    #         puts "" 
    #         FancyCatFinder::Scraper.scrape_cats #
            
    #         #unless FancyCatFinder::Scraper.scrape_cats ????????????
    #         respond_to_user_input(input)

    #     elsif input == 6 #|| input.to_s.downcase == 'bye'
    #         puts "See you next time. Adopt a shelter pet today!"
    #         puts ""
    #         #exit program
    #     else
    #         puts "Invalid entry! Please try again."
    #         puts ""
    #         get_user_input      #recursion
    #     end
    # end

    # def respond_to_user_input(input)
    #     case input
    #     when 1
    #         list_names
    #         puts ""
    #         puts "Enter the number next to the cat you wish to view."
    #         current_cat = gets.strip.to_i 
    #         puts "You selected #{@name}"
    #         #need build method to go into 2nd scrape here?

    #     when 2
    #         #can either return list of highest and lowest
    #         #or allow user to enter to choose
    #     when 3

    #     when 4

    #         # main_menu
    #         # get_user_input
    #     when 5
    #         #puts sample from array of cat facts
    #         puts "Just a moment- picking a cool Fancy Cat fact now..."
    #         puts FancyCatFinder::Scraper.random_cat_fact
    #         puts ""
    #         # main_menu
    #         # get_user_input
    #         ##how to keep adding to the scraped cats list? 50 + 50 etc...
    #     else
    #         get_user_input
    #     end
    # end

    ##where does the case statement go?##

    # input = gets.strip
    # index = input_to_i - 1
    # if index.between(1..50)
    # current_cat = list_names[index] ??
    # go to current_cat via link 2nd scrape
    # 

    # print cat_names
    # def get_names 
    #     @cat_names = FancyCatFinder::Cat.all.each {|element| element.text}
    # end

