class TopWines::CLI

    def call
        welcome
        fetch_wines
        menu
    end

    def welcome
        puts ""
        puts "WELCOME TO TOP WINES. LET'S FIND YOU SOME HIGHLY RATED WINES UNDER $20!"
        puts ""
    end

    def fetch_wines
        TopWines::Scraper.get_names("https://www.wine.com/list/wine/7155?pricemax=20&ratingmin=90")
    end

    def list_wines 
        TopWines::Wine.all.each.with_index(1) do |wine, index|
            puts "#{index}: #{wine.name}"
        end 
    end 

    def get_info(index)
        data = TopWines::Wine.all[index - 1]
        puts "Name: #{data.name}, Price: #{data.price}, Rating: #{data.rating}"
    end

    def get_description(index)
        data = TopWines::Wine.all[index - 1]
        puts "Winemaker Notes: #{data.description}"
    end

    def menu
        input = nil
        list_wines
        while input != "exit"
            puts ""
            puts "ENTER THE NUMBER OF THE WINE YOU'D LIKE MORE INFO ON OR TYPE LIST TO SEE WINES AGAIN OR TYPE EXIT"
            input = gets.strip.downcase 

            if (1..TopWines::Wine.all.length).include?(input.to_i)
                puts ""
                get_info(input.to_i)
                puts ""
                get_description(input.to_i)
            elsif input == "list"
                puts ""
                list_wines
            elsif input == "exit"
                puts ""
                goodbye
            else 
                puts ""
                puts "I'M NOT SURE WHAT YOU MEANT"
            end
        end
    end

    def goodbye
        puts "SEE YOU NEXT TIME FOR MORE GREAT WINES UNDER $20!"
        puts ""
    end

end