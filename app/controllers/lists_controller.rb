class ListsController < ApplicationController
  before_action :authenticate_user!

  def index
    @list = List.new
    @lists = current_user.lists
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = current_user.lists.new(list_params)

    if @list.save
      redirect_to '/lists'
    end
  end

  private

  def list_params
    params.require(:list).permit(:title)
  end
end
