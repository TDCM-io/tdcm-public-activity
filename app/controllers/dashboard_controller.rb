class DashboardController < ApplicationController
  def index
    @activity = Activity.all
  end
end
