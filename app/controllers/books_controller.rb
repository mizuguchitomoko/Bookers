class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  #string parameters定義

  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)
  end

  def edit
  end

   private
  def book_params
    params.permit(:title, :body)
    #params.require(:book).permit(:title, :body)

  end
end
