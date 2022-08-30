class WidgetsController < ApplicationController
  def index
    @widgets = Widget.all
  end

  def show
    @widget = Widget.find(params[:id])
  end

  def link
  end

  def link_frame
  end

  def create
    Widget.create!

    redirect_to request.referer
  end

  def turbo_drive
  end

  def turbo_frames
    @widgets = Widget.all
  end
end
