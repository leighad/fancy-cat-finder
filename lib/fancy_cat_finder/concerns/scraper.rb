class FancyCatFinder::Scraper

    names = Nokogiri::HTML(open("http://www.vetstreet.com/cats/breeds"))

    cat_names = names.css("div#hub-breed-list-container li") 

    # print cat_names
    def get_names(name_array) 
        name_array.each do |element|
            element.text
        end
    end

    def list_names(cat_names)
        get_names(cat_names).each.with_index(1) do |name, idx|
            puts "#{idx}: #{name}"
        end
    end

    #get attributes


end
