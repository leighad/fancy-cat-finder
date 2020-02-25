class FancyCatFinder::Cat 
    attr_accessor :name, :url, :info, :fact, :updated
    #:affection, :energy, :grooming (for future build))
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

    def fact
        @fact ||=  FancyCatFinder::Scraper.give_cat_fact(self)
    end

    def info
        @info ||=  FancyCatFinder::Scraper.update_cat(self)
    end

    def self.random_cat_fact
        sample.fact
    end

    def self.random_cat_info
        sample.info
    end

    def self.sample
        self.all.sample
    end
    
end 

    # def self.educate_cats
    #     #seems like a good place to connect cat with .fact and .history
    #     @cat_facts = 
    #     @@all.map do |cat| 
    #         FancyCatFinder::Scraper.give_cat_fact(cat)
    #     end 
    
    #     @cat_info = 
    #     @@all.map do |cat| 
    #         FancyCatFinder::Scraper.update_cat(cat)
    #     end 
    # end