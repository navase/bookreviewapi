class BooksController < ApplicationController
  def index
    books = Book.order(:title)

      render json: {
        books: books.as_json({:include => :reviews, :methods => :average_rating})
      }
  end

  def show
    @book = Book.find(params[:id])
    average_rating = @book.average_rating
    render json: {
      book: @book,
      average_rating: average_rating
    }
  end

  def create
    if book = Book.create(book_params)
      render json: {
        book: book
      }
    else
      render json: {
        message: "Something went wrong with adding your book. Please try again!",
        errors: book.errors
      }
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :summary, :publication_date)
  end
end
