class Api::V1::BooksController < ApplicationController

  def index
    books = Book.all

    render json: BookSerializer.new(books)
  end

  def show

  end

  def create

  end

  def destroy

  end

  private

  def book_params
    params.require(:book).permit(:name, :author, :image_url, :read, :rating, :list_id)
  end

end
