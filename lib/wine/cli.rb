#our CLI controller

class TopWines::CLI

    def call
        list_wines
        menu
        goodbye
    end

    def list_wines
        puts "The BEST wines under $20!"
        puts <<-DOC.gsub /^\s*/, ''
            1. Domaines Schlumberger Les Princes Abbes Riesling 2014 - 95 points - $19.99
            2. Fabre Montmayou Reserva Cabernet Franc 2016 - 96 points - $15.99
            3. Susana Balbo Signature Malbec 2016 - 95 points - $19.99
        DOC

    end

    def menu
        puts "Enter the number of the wine you'd like more info on or type exit to enter:"
        input = gets.strip.downcase
        while input != "exit"
            case input
                when "1"
                    puts "More info on wine 1..."
                    break
                when "2"
                    puts "More info on wine 2..."
                    break
                when "3"
                    puts "More info on wine 3..."
                    break
            end
        end
    end

    def goodbye
        puts "See you next time for more great wines under $20!"
    end

end
