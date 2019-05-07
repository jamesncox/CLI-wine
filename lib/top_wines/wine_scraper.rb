# require 'nokogiri'
require 'pry'

class Scraper
    
    def self.scrape
        doc = Nokogiri::HTML(open("https://www.wine.com/list/wine/7155?pricemax=20&ratingmin=95"))
    end

    #new class called self.get_wine(url)
    #scrape for prodItem
    #then separate attributes inside self.get_wine(url)

    def self.get_wines(url)
        main_scrape = Nokogiri::HTML(open(url)).css()
    end

    def self.get_names(url)

        data = Nokogiri::HTML(open(url)).css("ul.prodList").css("li.prodItem")
        data.each do |item|
            name = item.css("div.prodItemInfo").css("span.prodItemInfo_name").text
            ratings = item.css("li.wineRatings_listItem").css(".wineRatings_rating").first.text
            prices = item.css("div.productPrice").first.css(".prodItemStock_soldOut-smallText").text
            urls = item.css(".prodItemInfo_link").first.attributes["href"].value.prepend("https://www.wine.com")
            Obj.new(name, ratings, prices, urls)
            # binding.pry
            end
        
        # names = data.map do |item|
            # item.css("div.prodItemInfo").css("span.prodItemInfo_name").text

        end 
    #     # return names do NOT output
    #     names.each.with_index(1) {|item, index| puts "#{index}: #{item}"}
    # end 

    # def self.get_ratings(url)
    #     data =  Nokogiri::HTML(open(url)).css("ul.prodList").css("li.prodItem")

    #     ratings = data.map do |item|
    #         item.css("li.wineRatings_listItem").css(".wineRatings_rating").first.text
    #     end
    #     ratings.each.with_index(1) {|item, index| puts "#{index}: #{item}"}
    # end

    # def self.get_prices(url)
    #     data = Nokogiri::HTML(open(url)).css("ul.prodList").css("li.prodItem")

    #     prices = data.map do |item|
    #         item.css("div.productPrice").first.css(".prodItemStock_soldOut-smallText").text
    #     end
    #     prices.each.with_index(1) {|item, index| puts "#{index}: #{item}"}
    # end

    # def self.get_urls(url)
    #     data = Nokogiri::HTML(open(url)).css("ul.prodList").css("li.prodItem")

    #     urls = data.map do |item|
    #         item.css(".prodItemInfo_link").first.attributes["href"].value
    #     end
    #     urls.each.with_index(1) {|item, index| puts "#{index}: #{item}"}
    # end

end

    # master = []

    # master.map do |whatever|
    # end
    # names = data.css("div.prodItemInfo").css("span.prodItemInfo_name").text
    # ratings = data.css("li.wineRatings_listItem").css(".wineRatings_rating").first.text
    # prices = data.css("div.productPrice").first.css(".prodItemStock_soldOut-smallText").text
    # urls = data.css(".prodItemInfo_link").first.attributes["href"].value

# Scraper.get_names("https://www.wine.com/list/wine/7155?pricemax=20&ratingmin=95")
