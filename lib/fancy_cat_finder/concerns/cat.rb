class FancyCatFinder::Cat 
    attr_accessor :name, :url, :history, :fact, :cat_facts
     #:affection, :energy, :grooming
    @@all = []

    def initialize(detail_hash)
        # @name = detail_hash[:name]
        # @url = detail_hash[:url]

        detail_hash.each do |k,v|
            self.send("#{k}=", v) 
        end
        self.save
    end

    def save
        @@all << self
        self 
    end

    def self.all
        @@all
    end

    def self.get_cats
        FancyCatFinder::Scraper.scrape_cats
    end


    # def initialize(name=nil, url=nil) #history=nil, fact=nil
    #     @name = name
    #     @url = url
    #     # @history = history
    #     # @fact = fact
    #     @@all << self
    # end

#     def self.new_from_index_page(c)
#       self.new(
#         c.css("h2").text,
#         "https://www.theworlds50best.com#{c.css("a").attribute("href").text}",
#         #c.css("div.inner-page-section ins.richtext p").text
#         #c.css("div.interesting-breed-fact p").text
#         )
#     end

    # def doc
    #   @doc ||= Nokogiri::HTML(open(self.url))
    # end

    # def self.new_from_index_page(cat)
    #     FancyCatFinder::Scraper.get_page
    #     info = FancyCatFinder::Scraper.scrape_cats

    #     info.each do |item|
    #         cat = Cat.new
    #         cat.name = item.text
    #         cat.url = BASE_URL + item.attributes['href'].value
    #         cat.save
    #     end
    #     #cat ?
    # end 

    # def self.find(id)
    #     self.all[id-1]
    # end

end 
