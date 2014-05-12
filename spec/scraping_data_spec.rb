require 'spec_helper'

describe ScrapingData do
    
before :each do
  @scrap_data = ScrapingData.new("./spec/website/foodpanda.html")
end

it 'should give the restaurant title' do
   @scrap_data.scrap_data
   @scrap_data.restaurant_title.should eq("Khaaja Chowk")
end

it 'should scrap cuisine from website' do
   @scrap_data.scrap_data
   @scrap_data.cuisines_name.should eq("Biryani, North Indian")
end

it 'should scrap menu from website' do
   @scrap_data.scrap_data
   @scrap_data.menu_name == (["shorba", "Kebab: Veg.", "Kebab: Non-Veg.", "Snacks: Veg.","Rice: Veg.", "Rice: Non-Veg.", "Mains: Veg.", "Mains: Non-Veg.","Breads", "Salad/ Raita/ Papad", "Drinks", "Desserts"])
end

it 'should scrap sub menu items with price from the website' do
   @scrap_data.scrap_data
   @scrap_data.sub_menu_with_price.should eq(["Tamatar aur Hara Dhania Ka Shorba Rs.130.00", "Murgh Ka Shorba Rs.150.00", 
                                              "Achari Paneer Tikka Rs.295.00", "Paneer Tikka Rs.295.00", "Tandoori Salad Rs.295.00",
                                              "Bharwan Aloo Rs.250.00", "Corn Cheese Kebab Rs.250.00", "Cheese Chilli Seekh Kebab Rs.250.00",
                                              "Tandoori Bharwan Mushroom Rs.250.00", "Dahi Ke Kebab Rs.250.00", "Hara Kebab Rs.245.00", "Kebab Platter Rs.375.00",
                                              "Chicken Banno Kebab Rs.295.00", "Chicken Barra Rs.295.00", "Kastoori Kebab Rs.295.00", "Chicken Tikka Rs.295.00",
                                              "Murgh Malai Tikka Rs.295.00", "Mutton Seekh Kebab Rs.295.00", "Kakori Kebab Rs.360.00", "Chicken Kalmi Kebab Rs.360.00", 
                                              "Kebab Platter Rs.385.00", "Dahi Puchka Kolkata Se Rs.245.00", "Papdi Chaat Rs.475.00", "Khaaja Ki Chaat Rs.95.00", 
                                              "Palak Patta Chaat Rs.95.00", "Chaat Platter Rs.90.00", "Steamed Rice Rs.95.00", "Jeera Rice Rs.295.00", "Peas Pulao Rs.140.00",
                                              "Masala Pulao Rs.170.00", "Veg. Biryani Rs.170.00", "Chicken Biryani Rs.210.00", "Matka Chicken Biryani Rs.250.00", "Mutton Biryani Rs.295.00",
                                              "Matka Mutter Biryani Rs.395.00", "Paneer Makhni Rs.325.00", "Kadhai Paneer Rs.425.00", "Khaaja Special Paneer Rs.290.00", "Palak Paneer Rs.290.00", 
                                              "Paneer Butter Masala Rs.290.00", "Makhmali Kofta Curry Rs.290.00", "Gobi Mutter Masala Rs.290.00", "Baingan Ka Bharta Rs.290.00", "Bhindi Do Pyaza Rs.220.00",
                                              "Mutter Mushroom Rs.220.00", "Mixed Vegetables Rs.220.00", "Subz Miloni Rs.220.00", "Subzi Makhanwala Rs.220.00",
                                              "Palak Khumb Makai Rs.220.00", "Dum Pudina Aloo Rs.220.00", "Dal Makhni Rs.220.00", "Pindi Chana Masala Rs.210.00", "Dal Tadkedar Rs.240.00", 
                                              "Kiwi Ki Dal Rs.220.00", "Achari Chicken Rs.210.00", "Butter Chicken Rs.210.00", "Butter Chicken (Boneless) Rs.360.00", "Kadhai Chicken Rs.360.00",
                                              "Kadhai Chicken (Boneless) Rs.395.00", "Chicken Changezi Rs.360.00", "Dum Ka Murgh Rs.395.00", "Lagan Ka Murgh Rs.360.00", "Nalli Ka Salan Rs.360.00",
                                              "Chaap Curry Rs.360.00", "Rara Gosht Rs.395.00", "Mutton Rogan Josh Rs.395.00", "Dum Ka Gosht Rs.395.00", "Tandoori Roti Rs.395.00", "Fulka Rs.395.00",
                                              "Butter Roti Rs.30.00", "Plain Naan Rs.30.00", "Butter Naan Rs.35.00", "Lachha Parantha Rs.45.00", "Pudina Parantha Rs.60.00",
                                              "Roghni Naan Rs.60.00", "Garlic Naan Rs.60.00", "Kabuli Naan Rs.70.00", "Aloo Kulcha Rs.75.00", "Onion Kulcha Rs.75.00", "Paneer Kulcha Rs.75.00",
                                              "Roasted Papad Rs.75.00", "Masala Papad Rs.85.00", "Green Salad Rs.35.00", "Pudina Veg. Raita Rs.65.00", "Pineapple Raita Rs.95.00",
                                              "Masala Chaach Rs.110.00", "Sweet Lassi Rs.125.00", "Fresh Lime Soda Rs.70.00", "Pepsi Rs.80.00", "7 Up Rs.90.00", "Mirinda Rs.60.00",
                                              "Diet Pepsi Rs.60.00", "Mineral Water Rs.60.00", "Tonic Water Rs.65.00", "Masala Chai Rs.40.00", "Coffee Rs.95.00", "Orange Juice Rs.50.00",
                                              "Pineapple Juice Rs.65.00", "Guava Juice Rs.110.00", "Rocket Kulfi Rs.110.00", "Gulab Jamun Rs.110.00", "Rasgulla Rs.70.00", "Rabri Khaaja Rs.90.00"])
end

end
