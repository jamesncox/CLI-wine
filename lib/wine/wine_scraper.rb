# require 'nokogiri'

class Scraper
    
    # def self.scrape
    #     doc = Nokogiri::HTML(open("https://www.wine.com/list/wine/7155?pricemax=20&ratingmin=95"))
        
    # end

    def self.get_names(url)  
        data = Nokogiri::HTML(open(url)).css("ul.prodList").css("li.prodItem")
        
        names = data.map do |item|
            item.css("div.prodItemInfo").css("span.prodItemInfo_name").text
         end 
        # return names do NOT output
         names.each.with_index(1) {|item, index| puts "#{index}: #{item}"}
    end 

    # master = []

    # master.map do |whatever|
    # end
    # names = []
    # prices = []
    # ratings = []
    # urls = []
end


# Scraper.get_names("https://www.wine.com/list/wine/7155?pricemax=20&ratingmin=95")
