# require 'nokogiri'
require 'pry'

class Scraper
    
    # def self.scrape
    #     doc = Nokogiri::HTML(open("https://www.wine.com/list/wine/7155?pricemax=20&ratingmin=95"))
        
    # end

    #new class called self.get_wine(url)
    #scrape for prodItem
    #then separate attributes inside self.get_wine(url)

    def self.get_winesI(url)
        binding.pry
        main_scrape = Nokogiri::HTML(open(url)).css()
    end

    # def self.get_names(url)  
    #     data = Nokogiri::HTML(open(url)).css("ul.prodList").css("li.prodItem")
        
    #     names = data.map do |item|
    #         item.css("div.prodItemInfo").css("span.prodItemInfo_name").text

    #     end 
    #     # return names do NOT output
    #     names.each.with_index(1) {|item, index| puts "#{index}: #{item}"}
    # end 

    # {k:, [v:, v2:, v3:]}

    # wine_names = []
    # fill wine_names array with key/value pairs like in student scraper

    # [{name: "good_malbec", price: "$15", rating: "90", url: "goodwine.com"}, {name: "okay_syrah", price: "17",}]
    
    # { good_malbec: {price: 100, rating: "good", url: "link"},
    #   syrah: {price: 70, rating: "shit", url: "link" }
    # }   

    # master = []

    # master.map do |whatever|
    # end
    # names = []
    # prices = []
    # ratings = []
    # urls = [] ??????

# [5] pry(Scraper)> x.map {|whatever| {name: whatever.css("span.prodItemInfo_name").text}}
# => [{:name=>"Fabre Montmayou Reserva Cabernet Franc 2016"},
#  {:name=>"Susana Balbo Signature Malbec 2016"},
#  {:name=>"Domaines Schlumberger Les Princes Abbes Riesling 2014"},
#  {:name=>"Losada Bierzo 2015"},
#  {:name=>"Graham's Six Grapes Reserve Port"},
#  {:name=>"Carpano Antica Formula Sweet Vermouth (375ML)"},
#  {:name=>"Robert Oatley Signature Cabernet Sauvignon 2017"},
#  {:name=>"Graham's Six Grapes Reserve Port (375ML half-bottle)"},
#  {:name=>"Chateau Doisy Vedrines Sauternes (375ML Futures Pre-Sale) 2016"},
#  {:name=>"Chateau Doisy Vedrines Sauternes (375ML Futures Pre-Sale) 2018"}]
# [6] pry(Scraper)>

end


# Scraper.get_names("https://www.wine.com/list/wine/7155?pricemax=20&ratingmin=95")
