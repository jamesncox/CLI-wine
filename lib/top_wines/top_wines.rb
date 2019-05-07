class TopWines::Wine
    attr_accessor :name, :rating, :price, :description

    @@all = []

    def initialize(name, rating, price, description = nil)
      @name = name
      @rating = rating
      @price = price
      @description = description
      self.save 
    end

    def save
      @@all << self
    end

    def self.all
      @@all
    end

end
