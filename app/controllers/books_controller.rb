class BooksController < ApplicationController

  def index #一覧
    @books = Book.all
    @book = Book.new
  end

  def show  #詳細
  end

  def edit  #編集
  end

  def new #新規
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/show'
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
