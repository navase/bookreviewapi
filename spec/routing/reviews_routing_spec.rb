require 'rails_helper'

RSpec.describe ReviewsController, type: :routing do
  book = FactoryGirl.create(:book)
  review = FactoryGirl.create(:review)

  describe "routing" do
    it "routes to #index" do
      expect(:get => "/books/1/reviews").to route_to("reviews#index", book_id: "1")
    end

    it "routes to #create" do
      expect(:post => "/books/1/reviews").to route_to("reviews#create", book_id: "1")
    end
  end
end
