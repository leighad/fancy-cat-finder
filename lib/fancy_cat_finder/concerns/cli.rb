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

        binding.pry 
        # main_menu
        list_names
    end 

    #list_cat_names
        # print cat_names
        # def get_names(name_array) 
        #     name_array.each do |element|
        #         element.text
        #     end
        # end
    
        def list_names
            FancyCatFinder::Cat.all.each.with_index(1) do |name, idx|
                puts "#{idx}: #{cat.name}"
            end
        end

    #get user input

    #fetch attributes of cat selected based on user input

    #or retrieve random fancy cat

    #or generate a cat fact


end