class BooksController < ApplicationController
 #後から記述
  def top
  end
 #ここまで
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
  if book.save
    flash[:notice] = "book was successfully created."
    redirect_to book_path(book.id)
  else
    render action: :new
  end
end

 def destroy
    book = Book.find(params[:id])
   if book.destroy
    flash[:notice] = "Book was successfully destroyed."
    redirect_to books_path
  else
    render action: :new
  end
end

  def edit
    @book = Book.find(params[:id])
  end


 def update
   book = Book.find(params[:id])
   book.update(book_params)
   redirect_to book_path(book)
 end

   private
  def book_params
    params.permit(:title, :body)
    #params.require(:book).permit(:title, :body)

  end
end
