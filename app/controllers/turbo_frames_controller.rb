class TurboFramesController < ApplicationController
  def turbo_frames
    @count = Widget.count
  end

  def link_not_in_a_frame
  end

  def link_in_a_frame
  end

  def link_in_frame_targeting_a_different_frame
  end

  def link_not_in_frame_targeting_a_frame
  end

  def increment_count
    Widget.create!

    redirect_to request.referer

    return
  end

  def eager_loaded_frame
    sleep(5)
  end
end
