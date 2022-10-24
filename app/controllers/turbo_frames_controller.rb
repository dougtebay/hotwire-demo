class TurboFramesController < ApplicationController
  def turbo_frames
    @count = List.count
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
    List.create!(title: 'foo')

    redirect_to request.referer
  end

  def eager_loaded_frame
    sleep(1)
  end
end
