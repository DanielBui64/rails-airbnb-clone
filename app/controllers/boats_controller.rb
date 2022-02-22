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
  end

  def new
  end
end
