require 'rails_helper'

RSpec.describe Review, type: :model do
  describe "validations" do
    it { is_expected.to belong_to(:book) }
    it { is_expected.to validate_presence_of(:name) }
  end
end
