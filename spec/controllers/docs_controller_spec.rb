require 'rails_helper'

RSpec.describe DocsController, type: :controller do
  describe "GET #index" do
    it "renders the index" do
      get :index
      expect(response).to be_success
    end
  end
end
