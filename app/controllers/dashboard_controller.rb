class DashboardController < ApplicationController
  def index
    @activity = (Post.all + Client.all)
  end
end
