# To define CRUD functions
class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = book.new
  end

  def def create
    @book = Book.new(params[:book])
    @book.save
    redirect_to book_path(@book)
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_path(@book)
  end

  def destroy
    @book = Book.find(params[:id])
    @boo.:destroy
    redirect_to books_path :id
  end

  private

  def book_params
    params.require(:book).permit(:author, :pages)
  end
  
end
