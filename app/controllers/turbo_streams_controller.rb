class TurboStreamsController < ApplicationController
  def turbo_streams
    @widgets = Widget.all
    @widget = Widget.new
  end

  def target_action
    action = params[:target_action]

    args = (action == 'remove' ? {} : { partial: 'action', locals: { action: action } })

    render turbo_stream: turbo_stream.send(action, 'target', **args)
  end

  def multiple_targets
  end

  def multiple_targets_using_query_selectors
  end
end
