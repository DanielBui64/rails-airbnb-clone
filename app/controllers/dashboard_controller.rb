class DashboardController < ApplicationController
  def index
    @user = current_user
    @bookings_count = Booking.where(user: current_user).count
    if current_user.owner
      @booking_requests_count = Booking.where(boat: current_user.boats).count
      @boats_count = Boat.where(user: current_user).count
    end
  end

  def my_bookings
    @bookings = Booking.where(user: current_user)
    @booking_requests = Booking.where(boat: current_user.boats)
  end

  def my_boats
    @boats = Boat.where(user: current_user)
  end
end
