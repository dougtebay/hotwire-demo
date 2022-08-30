class TurboDriveController < ApplicationController
  def turbo_drive
  end

  def link
  end

  def create
    redirect_to request.referer
  end
end
