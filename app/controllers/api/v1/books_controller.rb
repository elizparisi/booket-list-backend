class Api::V1::BooksController < ApplicationController

before_action :set_list

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
    @book = Book.find(params[:id])
    @list = List.find(@book.list_id)
    @book.destroy

    render json: @list
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :image_url, :read, :rating, :list_id)
  end

end
