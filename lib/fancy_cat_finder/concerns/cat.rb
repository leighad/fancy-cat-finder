class FancyCatFinder::Cat 
    attr_accessor :name, :url, :affection_level, :energy_level, :shedding_level
    @@all = []

    def initialize(details)
        # @name = details[:name]
        # @url = details[:url]

        details.each do |k,v|
            self.send("#{k}=", v) 
        end

    end

    def save
        @@all << self
        self 
    end

    def self.all
        @@all
    end



end 
