class DashboardController < ApplicationController
  def index
    @activity = PublicActivity::Activity.all
  end
end
