class BooksController < ApplicationController
  
  def index #一覧
    @books = Book.all  
  end
  
  def show  #詳細
  end

  def edit  #編集
  end

  def new #新規
    @book = Book.new
  end
  
end
