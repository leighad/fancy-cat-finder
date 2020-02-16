class FancyCatFinder::Scraper
    attr_accessor :cat_facts
    BASE_URL = "http://www.vetstreet.com"

##
    def self.scrape_cats
        doc = Nokogiri::HTML(open("#{BASE_URL}/cats/breeds"))
        cat_info = doc.css("div#hub-breed-list-container a")
        # cat_info includes name and url

        cats = cat_info.map do |info|
            details = {
                name: info.text,
                url: BASE_URL + info.attributes['href'].value
            }
            cat = FancyCatFinder::Cat.new(details)
        end

        @cat_facts = 
        cats.map do |cat| 
            give_cat_fact(cat)
        end 

        FancyCatFinder::Cat.all.each do |cat|
            give_cat_fact(cat)
            update_cat(cat)  
        end
    end
##

    # def get_page
    #   Nokogiri::HTML(open("#{BASE_URL}/cats/breeds"))
    # end

    # def scrape_cats
    #    self.get_page.css("div#hub-breed-list-container a")
    # end

##
    def self.give_cat_fact(cat)
        one_cat = Nokogiri::HTML(open(cat.url))
        cat.fact = one_cat.css("div.interesting-breed-fact p").text
    end

    def self.update_cat(cat)
        one_cat = Nokogiri::HTML(open(cat.url))
        cat.history = one_cat.css("div.inner-page-section ins.richtext p").text
    end 
##

    # def make_cats
    #     scrape_cats.each do |cat|
    #         FancyCatFinder::Cat.new_from_index_page(cat)
    #     end
    # end

    # def self.update_cat(cat)
    #     one_cat = Nokogiri::HTML(open(cat.url))
    #     cat.fact = one_cat.css("div.interesting-breed-fact p").text
    #     cat.history = one_cat.css("div.inner-page-section ins.richtext p").text
    # end
    
    ##
    def self.random_cat_fact
        @cat_facts.sample 
    end

end
