#create wine objects

# 1. Domaines Schlumberger Les Princes Abbes Riesling 2014, 95 points, $19.99
# 2. Fabre Montmayou Reserva Cabernet Franc 2016, 96 points, $15.99
# 3. Susana Balbo Signature Malbec 2016, 95 points, $19.99

class TopWines
    attr_accessor :name, :rating, :price, :url

    def self.scrape_wines
        wines = []

     end


     names = Scraper.get_names("dkjlfhsdkjhlkjsdhf")

     names.each do |str|
        self.new.name = str 
     end

 


end
