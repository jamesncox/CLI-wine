#our CLI controller

class TopWines::CLI

    def call
        welcome
        list_wines
        menu
        goodbye
    end

    def welcome
        puts "Welcome to Top Wines. Let's find you some highly rated wine under $20.00!"
    end

    def list_wines
        Scraper.get_names("https://www.wine.com/list/wine/7155?pricemax=20&ratingmin=95")
    end

    # def list_ratings
    #     Scraper.get_ratings("https://www.wine.com/list/wine/7155?pricemax=20&ratingmin=95")
    # end

    # def list_prices
    #    Scraper.get_prices("https://www.wine.com/list/wine/7155?pricemax=20&ratingmin=95")
    # end

    # def list_urls
    #     Scraper.get_urls("https://www.wine.com/list/wine/7155?pricemax=20&ratingmin=95")
    # end

    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the wine you'd like more info on or type list to see more wines or type exit:"
            input = gets.strip.downcase 
            case input
                when "1"
                    puts "More info on wine 1..."
                when "2"
                    puts "More info on wine 2..."
                when "3"
                    puts "More info on wine 3..."
                when "list"
                    list_wines 
                else
                    puts "Not sure what you meant; type list or exit."
            end
        end
    end

    def goodbye
        puts "See you next time for more great wines under $20!"
    end

end