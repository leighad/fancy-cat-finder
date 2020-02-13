class FancyCatFinder::Scraper

    def self.scrape_names
        doc = Nokogiri::HTML(open("http://www.vetstreet.com/cats/breeds"))
        cat_info = doc.css("div#hub-breed-list-container a")
        # cat_info includes name and url

        # cat = FancyCatFinder::Cat.new(name)

        # list_names(cat_names)
        cat_info.each do |c|
            details = {
                name: c[0].text 
                url: c[0].attributes['href'].value
            }
        end

        cat = FancyCatFinder::Cat.new(details)
        
        # name = info[0].text 
        # url = info[0].attributes['href'].value

    end

    # print cat_names
    # def get_names(name_array) 
    #     name_array.each do |element|
    #         element.text
    #     end
    # end


    #get attributes
    def self.scrape_attributes(cat)
        # doc = Nokogiri::HTML(open(""))
        # attributes = doc.css("div#hub-breed-list-container li") 
    end


end
