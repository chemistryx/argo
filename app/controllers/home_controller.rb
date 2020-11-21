class HomeController < ApplicationController
  def index
    @activities = Activity.all.order("created_at DESC").select(:id, :user_id, :title).limit(3)
  end
end
