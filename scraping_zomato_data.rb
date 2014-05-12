require 'nokogiri'

class ScrapingZomato
   
   attr_accessor :website, :file, :restaurant_name, :reviewer_review_data_details
   def initialize(website)
      @file = File.open(website)
      @document = Nokogiri::HTML(file)
      @restaurant_name = restaurant_name
      @reviewer_review_data_details = []
   end
   
   def scrap_data
     @restaurant_name =  review_restaurant_name
     review_details
     @file.close
   end

   def review_restaurant_name
      @document.xpath('//h2[@class ="nf-heading mt0 mb0"]').text().strip
   end

   def review_details
       @document.css('//div[@class = "res-review clearfix mbot2   item-to-hide-parent stupendousact"]').each do |data|
       review_details = {:reviewer_name => data.css('div[@class = "actn-2-e-name left"]').text().strip, :reviewer_reviews => data.css('div[@class = "rev-text"]').text().strip, :reviewer_reviews_expand => data.css('div[@class = "rev-text-expand"]').text().strip}
       @reviewer_review_data_details.push(review_details)
      end
   end
end
