class Api::V1::ListsController < ApplicationController

  def index
    lists = List.all

    render json: ListSerializer.new(lists)
  end

  def show

  end

  def create

  end

  def destroy

  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
