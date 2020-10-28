class Result
    attr_accessor :title, :ingredients, :thumbnail

    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        @@all 
    end

end