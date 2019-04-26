#our CLI controller

class TopWines::class

    def call
        puts "The BEST wines under $20!"
        list_wines
    end

    def list_wines
        puts <<-DOC.gsub /^\s*/, ''
            1. Domaines Schlumberger Les Princes Abbes Riesling 2014 - 95 points - $19.99
            2. Fabre Montmayou Reserva Cabernet Franc 2016 - 96 points - $15.99
            3. Susana Balbo Signature Malbec 2016 - 95 points - $19.99 
        DOC
        end
    end

end