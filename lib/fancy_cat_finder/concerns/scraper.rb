class FancyCatFinder::Scraper
    BASE_URL = "http://www.vetstreet.com"
    def self.scrape_cats
        doc = Nokogiri::HTML(open("#{BASE_URL}/cats/breeds"))
        cat_info = doc.css("div#hub-breed-list-container a")
        # cat_info includes name and url

        # cat = FancyCatFinder::Cat.new(name)

        # list_names(cat_info)
        cats = cat_info.map do |info|
            details = {
                name: info.text,
                url: BASE_URL + info.attributes['href'].value
            }
            cat = FancyCatFinder::Cat.new(details)
        end

        cats.each do |cat|
            update_cat(cat)
        end

        
        # name = info[0].text 
        # url = info[0].attributes['href'].value

    end

    def self.update_cat(cat)

        one_cat = Nokogiri::HTML(open(cat.url))

        cat.fact = one_cat.css("div.interesting-breed-fact p").text
    end

    # print cat_names
    # def get_names(name_array) 
    #     name_array.each do |element|
    #         element.text
    #     end
    # end


    #get attributes
    


end
