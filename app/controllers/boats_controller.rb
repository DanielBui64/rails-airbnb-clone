class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def edit
  end

  def update
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
    params.require(:boat).permit(:name, :make_model_year, :location, :price_per_day, :capacity, :description, :photo)
    # add <photos: []> for many photos
  end
end
