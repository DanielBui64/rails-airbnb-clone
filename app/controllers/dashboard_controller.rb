class DashboardController < ApplicationController
  def index
  end

  def my_bookings
  end

  def my_boats
    @boats = Boat.where(user: current_user)
  end
end
