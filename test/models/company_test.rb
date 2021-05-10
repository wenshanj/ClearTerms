require "test_helper"

class CompanyTest < ActiveSupport::TestCase
  should have_many(:tcs)

  should validate_uniqueness_of(:url).case_insensitive
  should validate_presence_of(:name)
  should validate_presence_of(:description)
  should validate_presence_of(:url)
  should validate_presence_of(:logo)
  should validate_presence_of(:crunchbase_url)

  context "Given context" do
    setup do 
      create_companies
    end

    should "list companies alphabetically" do
      assert_equal ["Adidas", "Adobe", "Apple", "Away", "Esty", "Facebook", "Farfetch", "Grubhub", "Guitar Center", "J.Crew", "Lululemon", "Netflix", "Nike", "Nordstrom", "Redfin", "Sephora", "Sony", "Spotify", "UNIQLO", "Urban Outfitters", "Wayfair", "eBay"], Company.alphabetical.map{|o| o.name}
    end
  end

end
