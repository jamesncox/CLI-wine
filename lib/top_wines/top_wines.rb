#create wine objects

# 1. Domaines Schlumberger Les Princes Abbes Riesling 2014, 95 points, $19.99
# 2. Fabre Montmayou Reserva Cabernet Franc 2016, 96 points, $15.99
# 3. Susana Balbo Signature Malbec 2016, 95 points, $19.99

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
