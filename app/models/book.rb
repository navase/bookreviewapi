class Book < ActiveRecord::Base
  has_many :reviews
  validates :title, presence: true
  validates :author, presence: true

  def average_rating
    if self.reviews.present?
      return self.reviews.average(:rating).round
    else
      return  0
    end
  end
end
