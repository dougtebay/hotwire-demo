class TurboStreamsController < ApplicationController
  def turbo_streams
    @widgets = Widget.all
    @widget = Widget.new
  end

  def target_action
    render params[:target_action]
  end

  def multiple_targets
  end

  def multiple_targets_using_query_selectors
  end
end
