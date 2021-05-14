class Api::V1::ListsController < ApplicationController

  # before_action :set_list

  def index
    lists = List.all

    render json: ListSerializer.new(lists)
  end

  def show

  end

  def create
    list = List.new(list_params)

    if list.save
      render json: ListSerializer.new(list), status: accepted
    else
      render json: { errors: list.errors.full_messages }, status: unprocessible_entity
    end
  end

  def destroy
    list = List.find(params[:id])
    list.destroy
  end

  private

  # def set_list
  #   @list = List.find(params[:list_id])
  # end

  def list_params
    params.require(:list).permit(:name)
  end
end
