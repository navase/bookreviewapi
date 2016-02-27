class ReviewsController < ApplicationController
  before_action :set_book

  def index
    render json: {
      reviews: @book.reviews.order(id: :desc)
    }
  end

  def create
    review = Review.create(review_params)
    review.book = @book

    if review.save
      render json: {
        review: review
      }
    else
      render json: {
        message: "Something went wrong with adding your review. Please try again!",
        errors: review.errors
      }
    end
  end

  private
  def set_book
    @book = Book.find(params[:book_id])
  end

  def review_params
    params.require(:review).permit(:name, :description, :rating, :book_id)
  end
end
