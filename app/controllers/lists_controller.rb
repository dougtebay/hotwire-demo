class ListsController < ApplicationController
  before_action :authenticate_user!

  def index
    @lists = current_user.lists
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)

    respond_to do |format|
      if @list.save
        current_user.lists << @list
        @lists = current_user.lists
        @list = List.new
        format.turbo_stream { render turbo_stream: turbo_stream.replace('list_form', partial: 'lists/form', locals: { list: @list, notice: 'Success' }) }
      else
        format.turbo_stream { render turbo_stream: turbo_stream.replace('list_form', partial: 'lists/form', locals: { list: @list }) }
      end
    end
  end

  private

  def list_params
    params.require(:list).permit(:title)
  end
end
