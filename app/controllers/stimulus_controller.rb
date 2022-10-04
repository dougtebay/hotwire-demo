class StimulusController < ApplicationController
  def stimulus
    @widget = Widget.new
  end
end
