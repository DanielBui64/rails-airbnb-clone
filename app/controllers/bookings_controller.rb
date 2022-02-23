class BookingsController < ApplicationController
  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @boat = Boat.find(params[:boat_id])
    @booking.boat = @boat
    if @booking.save
      redirect_to dashboard_my_bookings_path
    else
      render :show
    end
  end

  def new
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_my_bookings_path
  end

  def confirm
  end

  private

  def booking_params
    params.require(:booking).permit(:date_start, :date_end)
  end
end
