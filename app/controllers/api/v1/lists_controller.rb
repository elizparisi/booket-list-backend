class Api::V1::ListsController < ApplicationController


  def index
    @lists = List.all

    render json: @lists
  end

  def show
    @list = List.find(params[:id])

    render json: @list
  end

  def create
    @list = List.new(list_params)

    if @list.save
      render json: @list, status: :created
    else
      render json: { errors: list.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
