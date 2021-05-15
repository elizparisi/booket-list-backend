class Api::V1::BooksController < ApplicationController

  def index
    @books = Book.all

    render json: @books
  end

  def show
    @book = Book.find(params[:id])

    render json: @book
  end

  def create
    # create book off of list bc we have nested routes
    @book = @list.books.new(book_params)

    if @book.save
      render json: @list
    else
      render json: { errors: list.errors.full_messages }, status: unprocessible_entity
    end
  end

  def destroy

  end

  private

  def book_params
    params.require(:book).permit(:name, :author, :image_url, :read, :rating, :list_id)
  end

end
