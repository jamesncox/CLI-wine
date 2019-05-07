class TopWines::Scraper
    
    def self.scrape
        doc = Nokogiri::HTML(open("https://www.wine.com/list/wine/7155?pricemax=20&ratingmin=95"))
    end

    def self.get_names(url)

        data = Nokogiri::HTML(open(url)).css("ul.prodList").css("li.prodItem")
        data.each do |item|
            name = item.css("div.prodItemInfo").css("span.prodItemInfo_name").text
            rating = item.css("li.wineRatings_listItem").css(".wineRatings_rating").first.text
            price = item.css("div.productPrice").first.css(".prodItemStock_soldOut-smallText").text
            wine_url = item.css(".prodItemInfo_link").first.attributes["href"].value.prepend("https://www.wine.com")
            description = Nokogiri::HTML(open(wine_url)).css("div.viewMoreModule_text").first.text
            TopWines::Wine.new(name, rating, price, description)
            end
        end 
    
end