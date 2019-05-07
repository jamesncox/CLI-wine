#our CLI controller
require 'pry'

class TopWines::CLI

    def call
        welcome
        fetch_wines
        menu
        goodbye
    end

    #helpers

    def welcome
        puts "Welcome to Top Wines. Let's find you some highly rated wines under $20.00!"
        puts ""
    end

    def fetch_wines
        TopWines::Scraper.get_names("https://www.wine.com/list/wine/7155?pricemax=20&ratingmin=95")
    end

    def list_wines 
        TopWines::Wine.all.each.with_index(1) do |wine, index|
            puts "#{index}: #{wine.name}"
        end 
    end 

    def get_info(index)
        data = TopWines::Wine.all[index - 1]
        puts "Price: #{data.price}, Rating: #{data.rating}"
    end

    def get_description(index)
        data = TopWines::Wine.all[index - 1]
        puts "Winemaker Notes: #{data.description}"
    end 

    # -- end helpers

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
        list_wines
        while input != "exit"
            # puts "Type get info for more information and type get description for wine notes"
            puts ""
            puts "Enter the number of the wine you'd like more info on or type list to see wines again or type exit:"
            puts ""
            input = gets.strip.downcase 

            if (1..TopWines::Wine.all.length).include?(input.to_i)
                get_info(input.to_i)
                get_description(input.to_i)
            else
                "WHAT? Type list or exit."
            # case input
            #     when (1..11).include?(input.to_i)
            #         get_info(input)
            #     when "get description"
            #        puts "dsc for what?"
            #        input = gets.strip.to_i
            #        get_description(input)
            #     when "list"
            #         list_wines 
            #     else
            #         # binding.pry
            #         puts "Not sure what you meant; type list or exit."
            end
        end
    end

    def goodbye
        puts "See you next time for more great wines under $20!"
    end

end