require 'spec_helper'

describe ScrapingZomato do
  
  before :each do
    @scrap_data = ScrapingZomato.new("./spec/website/zomato.html")
  end

  it 'should scrap the name of the restaurant' do
    @scrap_data.scrap_data
    @scrap_data.restaurant_name.should eq("User reviews for Smoke House Deli")
  end

  it 'should scrap the name of the reviewer' do
    @scrap_data.scrap_data
    @scrap_data.reviewer_review_data_details[0][:reviewer_name].should eq("Varun Agarwal")
  end
end
