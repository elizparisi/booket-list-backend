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

end
