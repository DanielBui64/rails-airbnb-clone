class DashboardController < ApplicationController
  def index
  end

  def my_bookings
    @bookings = Booking.where(user: current_user)
    @booking_requests = Booking.where(boat: current_user.boats)
  end

  def my_boats
    @boats = Boat.where(user: current_user)
  end
end
