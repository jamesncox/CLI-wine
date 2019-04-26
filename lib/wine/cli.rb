#our CLI controller

class TopWines::class

    def call
        puts "The BEST wines under $20!"
        top_wines
    end

end