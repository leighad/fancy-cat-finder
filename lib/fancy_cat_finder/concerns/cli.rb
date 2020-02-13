class FancyCatFinder::CLI 

    def start
        puts ""
        puts "   Welcome to the Fancy Cat Finder!"
        puts ""
        # render_ascii_welcome
        # logo = {}
        puts "  ^   =   ^   =   ^     =   ^   =   ^ " 
        puts " / \\ / \\ / \\ / \\ / \\   / \\ / \\ / \\ / \\ "
        puts "( F ) A ) N ) C ) Y ) ( C ) A ) T ) S )"
        puts " \\_/ \\_/ \\_/ \\_/ \\_/   \\_/ \\_/ \\_/ \\_/ "
        puts ""
        FancyCatFinder::Scraper.scrape_names 

        main_menu
        # list_names
    end

    def main_menu
        puts "Please enter the number of your selection."
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

    #list_cat_names
        # print cat_names
        # def get_names(name_array) 
        #     name_array.each do |element|
        #         element.text
        #     end
        # end
    
        def list_names
            FancyCatFinder::Cat.all.each.with_index(1) do |cat, idx|
                puts "#{idx}: #{cat.name}"
            end
        end

    #get user input

    #fetch attributes of cat selected based on user input

    #or retrieve random fancy cat

    #or generate a cat fact


end