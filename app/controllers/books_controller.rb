class BooksController < ApplicationController

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book
  end

  def index
    @book = Book.new
    @book1 = Book.all
  end

  def show
  end

  def edit
  end

  def destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
