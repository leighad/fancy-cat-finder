class FancyCatFinder::Scraper

    def self.scrape_names
        doc = Nokogiri::HTML(open("http://www.vetstreet.com/cats/breeds"))
        cat_names = doc.css("div#hub-breed-list-container li") 
    end

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
    def self.scrape_attributes(cat)
        # doc = Nokogiri::HTML(open(""))
        # attributes = doc.css("div#hub-breed-list-container li") 
    end


end
