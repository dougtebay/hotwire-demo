class WidgetsController < ApplicationController
  def create
    Widget.create!(widget_params)

    @widget = Widget.new

    render turbo_stream: turbo_stream.replace(@widget, partial: 'widgets/create', locals: { widget: @widget })
  end

  def edit
    @widget = Widget.find(params[:id])

    render turbo_stream: turbo_stream.replace(@widget, partial: 'widgets/edit', locals: { widget: @widget }) 
  end

  def update
    @widget = Widget.find(params[:id])

    @widget.update!(widget_params)

    # render turbo_stream: turbo_stream.replace(@widget, partial: 'widgets/widget', locals: { widget: @widget }) 
  end

  def destroy
    Widget.find(params[:id]).destroy
  end

  private

  def widget_params
    params.require(:widget).permit(:name)
  end
end
