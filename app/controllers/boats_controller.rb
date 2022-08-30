class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.save
    redirect_to_boat_path(boat)
  end

  private

  def boat_params
    params.require(:restaurant).permit(:name, :category, :available, :capacity, :location, :price, :rating)
  end
end
