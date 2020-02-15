class FancyCatFinder::Cat 
    attr_accessor :name, :url, :history, :fact, :affection, :energy, :grooming, :cat_facts 
    @@all = []

    def initialize(detail_hash)
        # @name = detail_hash[:name]
        # @url = detail_hash[:url]

        detail_hash.each do |k,v|
            self.send("#{k}=", v) 
        end
        self.save
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

    def save
        @@all << self
        self 
    end

    def self.all
        @@all
    end

    def self.find(id)
        self.all[id-1]
    end

end 

# class WorldsBestRestaurants::Restaurant

#     attr_accessor :name, :position, :location, :url, :head_chef, :website_url, :food_style, :best_dish, :contact, :description
  
#     @@all = []
  
#     def self.new_from_index_page(r)
#       self.new(
#         r.css("h2").text,
#         "https://www.theworlds50best.com#{r.css("a").attribute("href").text}",
#         r.css("h3").text,
#         r.css(".position").text
#         )
#     end
  
#     def initialize(name=nil, url=nil, location=nil, position=nil)
#       @name = name
#       @url = url
#       @location = location
#       @position = position
#       @@all << self
#     end
  
#     def self.all
#       @@all
#     end
  
#     def self.find(id)
#       self.all[id-1]
#     end
  
#     def best_dish
#       @best_dish ||= doc.css("div.c-4.nr.nt ul:nth-child(8) li").text
#       # @best_dish ||= doc.xpath("//div[@class='c-4 nr nt']/ul[3]/li").text
#     end
  
#     def food_style
#       @food_style ||= doc.css("div.c-4.nr.nt ul:nth-child(6) li").text
#       # @food_style ||= doc.xpath("//div[@class='c-4 nr nt']/ul[2]/li").text
#     end
  
#     def contact
#       @contact ||= doc.css("div.c-4.nr.nt ul:nth-child(10) li:nth-child(1)").text.split("+").join(". Tel: +")
#       # @contact ||= doc.xpath("//div[@class='c-4 nr nt']/ul[4]/li[1]").text.split("+").join(". Tel: +")
#     end
  
#     def head_chef
#       @head_chef ||= doc.css("div.c-4.nr.nt ul:nth-child(3) li").text.split(" (pictured)").join("")
#       # @head_chef ||= doc.xpath("//div[@class='c-4 nr nt']/ul[1]/li").text.split(" (pictured)").join("")
#     end
  
#     def website_url
#       @website_url ||= doc.css("div.c-4.nr.nt ul:nth-child(10) li:nth-child(2) a").text
#       # @website_url ||= doc.xpath("//div[@class='c-4 nr nt']/ul[4]/li[2]/a").text
#     end
  
#     def description
#       @description ||= doc.css("div.c-8.nl.nt > p:nth-child(6)").text
#       # @description ||= doc.xpath("//div[@class='c-8 nl nt']/p[3]").text
#     end
  
#     def doc
#       @doc ||= Nokogiri::HTML(open(self.url))
#     end
#   end
