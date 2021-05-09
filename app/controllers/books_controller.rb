class BooksController < ApplicationController

  def index #一覧
    @books = Book.all
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    if book.save
      redirect_to book_path(book.id)
      flash[:notice] = "Book was successfully created"
    else
      render :index
    end


  end

  def show  #詳細
    @book = Book.find(params[:id])
  end

  def edit  #編集
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path(@book.id)
      flash[:notice] = "Book was successfully updated"
    else
      render :edit
    end

  end

  #def new 新規
  #end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
    flash[:notice] = "Book was successfully destroyed"
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
