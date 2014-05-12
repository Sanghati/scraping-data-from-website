require 'nokogiri'

class ScrapingData

  attr_accessor :html_path, :restaurant_title, :cuisines_name, :file, :menu_name, :sub_menu, :sub_price, :sub_menu_with_price
  def initialize(html_path)
    @file = File.open(html_path)
    @document = Nokogiri::HTML(file)
    @menu_name = []
    @sub_menu_with_price = []
    @sub_menu = []
    @sub_price = []
  end

  def scrap_data
      @restaurant_title = title
      @cuisines_name = cuisines
      menu
      sub_menu_items
      @file.close
  end

  def title
     @document.css('.restaurant-title').find {|data| return data.css("span.text-hide").text()}
  end
  
  def cuisines
     @document.css(".cuisines").each {|data| return data.text()}
  end

  def menu
    @document.css(".restaurant-category").each {|data| @menu_name << data.text().strip}
  end

  def sub_menu_items
    @document.xpath('//div[@class ="product-title no-variation"]').each {|data| @sub_menu << data.text().strip}
    @document.xpath('//div[@class ="price"]').each {|data| @sub_price << data.text().strip}
    @sub_menu_with_price = @sub_menu.map.with_index{ |m,i| m + " " + @sub_price[i].to_s}
  end

end
