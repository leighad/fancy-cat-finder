class FancyCatFinder::CLI 

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

        # first scrape
        FancyCatFinder::Scraper.scrape_names 

        main_menu
        # list_names
    end

    # def render_ascii_welcome
    #     File.readlines("fancy_welcome.txt") do |line|
    #         puts line
    #     end
    # end
    ###### need to figure out how to use this ######

    def main_menu
        puts "Please enter the number of your selection:"
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
        puts "6. Type 'exit' to quit"
        #to quit
        puts nil 

    end
    
    def list_names
        FancyCatFinder::Cat.all.each.with_index(1) do |cat, idx|
            puts "#{idx}: #{cat.name}"
        end
    end

end

#list_cat_names
    # print cat_names
    # def get_names(name_array) 
    #     name_array.each do |element|
    #         element.text
    #     end
    # end