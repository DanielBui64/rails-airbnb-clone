class BookingsController < ApplicationController
  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @boat = Boat.find(params[:boat_id])
    @booking.boat = @boat
    if @booking.save
      redirect_to booking_confirm_path(@booking)
    else
      render :show
    end
  end

  def new
  end

  def destroy
  end

  def confirm
  end

  private

  def booking_params
    params.require(:booking).permit(:date_start, :date_end)
  end
end
