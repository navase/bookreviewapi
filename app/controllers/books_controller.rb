class BooksController < ApplicationController
  def index
    render json: {
      books: Book.order(:title)
    }
  end

  def show
    book = Book.find(params[:id])
    render json: {
      book: book
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
