class DashboardController < ApplicationController
  def index
    @categories = Category.all
    @devices = Device.all
    @softwares = Software.all
  end
end
