class DashboardController < ApplicationController
  def index
    @category = Category.all
    @device = Device.all
    @software = Software.all
  end
end
