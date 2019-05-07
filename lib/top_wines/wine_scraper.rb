# require 'nokogiri'
require 'pry'

class Scraper
    
    def self.scrape
        doc = Nokogiri::HTML(open("https://www.wine.com/list/wine/7155?pricemax=20&ratingmin=95"))
    end

    #new class called self.get_wine(url)
    #scrape for prodItem
    #then separate attributes inside self.get_wine(url)

    # def self.get_wines(url)
    #     main_scrape = Nokogiri::HTML(open(url)).css()
    # end

    def self.get_names(url)

        data = Nokogiri::HTML(open(url)).css("ul.prodList").css("li.prodItem")
        data.each do |item|
            name = item.css("div.prodItemInfo").css("span.prodItemInfo_name").text
            rating = item.css("li.wineRatings_listItem").css(".wineRatings_rating").first.text
            price = item.css("div.productPrice").first.css(".prodItemStock_soldOut-smallText").text
            url = item.css(".prodItemInfo_link").first.attributes["href"].value.prepend("https://www.wine.com")
            Obj.new(name, rating, price, url)
            # binding.pry
            end
        
        # names = data.map do |item|
            # item.css("div.prodItemInfo").css("span.prodItemInfo_name").text

        end 
    
end

    # names = data.css("div.prodItemInfo").css("span.prodItemInfo_name").text
    # ratings = data.css("li.wineRatings_listItem").css(".wineRatings_rating").first.text
    # prices = data.css("div.productPrice").first.css(".prodItemStock_soldOut-smallText").text
    # urls = data.css(".prodItemInfo_link").first.attributes["href"].value

# Scraper.get_names("https://www.wine.com/list/wine/7155?pricemax=20&ratingmin=95")
