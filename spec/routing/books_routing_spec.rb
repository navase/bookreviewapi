require 'rails_helper'

RSpec.describe BooksController, type: :routing do
  book=FactoryGirl.create(:book)

  describe "routing" do

    it "routes to #index" do
      expect(:get => "/books").to route_to("books#index")
    end

    it "routes to #show" do
      expect(:get => "/books/1").to route_to("books#show", id: "1")
    end

    it "routes to #create" do
      expect(:post => "/books").to route_to("books#create")
    end
  end
end
