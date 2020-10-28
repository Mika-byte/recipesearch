class Result
    attr_accessor :title, :ingredients, :thumbnail

    @@all = []

# add the instances into the @@all array
    def initialize
        @@all << self
    end
# to access @@all inside the API class
    def self.all
        @@all 
    end

end