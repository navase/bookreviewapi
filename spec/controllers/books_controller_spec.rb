require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  book = FactoryGirl.create(:book)

  describe "GET #index" do
    it "renders the :index" do
      get :index
      expect(response).to be_success
    end

    it "returns json" do
      get :index
      expect(response.header['Content-Type']).to include('application/json')
    end
  end

  describe "GET #show" do
    it "renders the :show" do
      book
      get :show, id: book.id
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid attributes" do
      it "saves the new book in the database" do
        expect {
          post :create, book: FactoryGirl.attributes_for(:book)
        }.to change(Book, :count).by(1)
      end
    end

    context "with invalid attributes" do
      it "does not save the new book in the database" do
        expect {
          post :create, book: FactoryGirl.attributes_for(:book, title: nil)
        }.to_not change(Book, :count)
      end
    end
  end
end
