require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do
  review = FactoryGirl.create(:review)

  describe "GET #index" do
    it "renders the index" do
      get :index, :book_id => review.book.id
      expect(response).to be_success
    end

    it "returns json" do
      get :index, :book_id => review.book.id
      expect(response.header['Content-Type']).to include('application/json')
    end
  end

  describe "POST #create" do
    context "with valid attributes" do
      it "saves the new review in the database" do
        expect {
          post :create, review: FactoryGirl.attributes_for(:review), :book_id => review.book.id
        }.to change(Review, :count).by(1)
      end
    end

    context "with invalid attributes" do
      it "does not save the new review in the database" do
        expect {
          post :create, review: FactoryGirl.attributes_for(:review, name: nil), :book_id => review.book.id
        }.to_not change(Review, :count)
      end
    end
  end
end
