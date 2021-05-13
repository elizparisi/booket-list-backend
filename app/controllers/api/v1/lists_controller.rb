class Api::V1::ListsController < ApplicationController

  before_action :set_list

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

  def set_list
    @list = List.find(params[:list_id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
