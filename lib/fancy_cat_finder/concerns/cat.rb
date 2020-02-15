class FancyCatFinder::Cat 
    attr_accessor :name, :url, :affection_level, :energy_level, :shedding_level, :fact
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



end 
