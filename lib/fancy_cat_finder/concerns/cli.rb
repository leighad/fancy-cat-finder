class FancyCatFinder::CLI 
    attr_accessor :cat_names

    def start
        # welcome user
        puts ""
        puts "   Welcome to the Fancy Cat Finder!"
        puts ""
        # render_ascii_welcome
        puts "  ^   =   ^   =   ^     =   ^   =   ^ " 
        puts " / \\ / \\ / \\ / \\ / \\   / \\ / \\ / \\ / \\ "
        puts "( F ) A ) N ) C ) Y ) ( C ) A ) T ) S )"
        puts " \\_/ \\_/ \\_/ \\_/ \\_/   \\_/ \\_/ \\_/ \\_/ "
        puts ""

        # 1st scrape
        FancyCatFinder::Scraper.scrape_names 
        
        main_menu
        #get_user_input

        list_names
    end

    # def render_ascii_welcome
    #     File.readlines("fancy_welcome.txt") do |line|
    #         puts line
    #     end
    # end
    ###### need to figure out how to use this ######
    # need "fancy_welcome.txt" file...

    def main_menu
        # puts "Please enter the number of your selection:"
        puts "1. List all fancy cats"
        #user can then select individual cat for more details
        #like history and personality
        puts "2. List fancy cats by affection level"
        #user can then select most/least
        puts "3. List fancy cats by energy level"
        #user can then select most/least
        puts "4. List fancy cats by shedding level"
        #user can then select most/least
        puts "5. Just for fun: random cat facts"
        #will generate a random cat fact from API request hopefully
        puts "6. Or type 'bye' to quit"
        #to quit/exit program
        puts nil 
        # get_user_input
    end

    def get_user_input
        puts "Please enter the number of your selection:"
        input = gets.strip
        # should quit go first?

        if input_to_i.between(1..5)
            #continue to run
        elsif input_to_i == 6 || input.downcase == 'bye'
            puts "See you next time. Adopt a shelter pet today!"
            #exit program
        else
            puts "Invalid entry! Please try again"
            get_user_input      #recursion
        end
    end

    ##where does the case statement go?##
    # input = gets.strip
    # index = input_to_i - 1
    # if index.between(1..50)
    # current_cat = list_names[index]
    # go to current_cat via link
    # 

    
    def list_names
        FancyCatFinder::Cat.all.each.with_index(1) do |cat, idx|
            puts "#{idx}: #{cat.name}"
        end
    end

end

    # print cat_names
    # def get_names 
    #     @cat_names = FancyCatFinder::Cat.all.each {|element| element.text}
    # end
    