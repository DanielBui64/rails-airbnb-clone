class BoatsController < ApplicationController
  def index
    @boats = Boat.all
    @markers = @boats.geocoded.map do |boat|
      {
        lat: boat.latitude,
        lng: boat.longitude,
        info_window: render_to_string(
          partial: "info_window",
          locals: { boat: boat }
        ),
        image_url: helpers.asset_url("redboat.png")
      }
    end
  end

  def show
    @boat = Boat.find(params[:id])
    @booking = Booking.new
    @user = @boat.user
  end

  def edit
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])
    @boat.update(boat_params)

    redirect_to dashboard_my_boats_path
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    if @boat.save
      redirect_to dashboard_my_boats_path
    else
      render :new
    end
  end

  def new
    @boat = Boat.new
  end

  def destroy
    @boat = Boat.find(params[:id])
    @boat.destroy
    redirect_to dashboard_my_boats_path
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :make_model_year, :location, :price_per_day, :capacity, :description, photos: [])
  end
end
