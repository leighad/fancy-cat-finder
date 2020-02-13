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
        # main_menu
    end 

    #list_cat_names
        # print cat_names
        # def get_names(name_array) 
        #     name_array.each do |element|
        #         element.text
        #     end
        # end
    
        def list_names(cat_names)
            get_names(cat_names).each.with_index(1) do |name, idx|
                puts "#{idx}: #{name}"
            end
        end
    #FancyCatFinder::Scraper.scrape_names 

    #get user input

    #fetch attributes of cat selected based on user input

    #or retrieve random fancy cat

    #or generate a cat fact


end