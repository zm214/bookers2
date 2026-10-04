class BooksController < ApplicationController
  def new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = Current.user.id
    if @book.save
      redirect_to book_path(@book), notice: "You have created book successfully."
    else
      @books = Book.all
      render :index, status: :unprocessable_entity
    end
  end

  def index
    @user = User.find(params[:id])
    @book = Book.new
    @book = Book.all
  end

  def show
    
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
