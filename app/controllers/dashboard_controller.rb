class DashboardController < ApplicationController
  def index
    @devices = Device.all
    @software = Software.all
  end
end
