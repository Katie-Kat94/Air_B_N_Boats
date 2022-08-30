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

  def edit
    # on link do if @boat.user == current user show the link
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])
    if @boat.update(boat_params)
      redirect_to boat_path(@boat)
    else
      render :edit, status: :unprocessable_entity
    end

  end

  private

  def boat_params
    params.require(:boat).permit(:name, :category, :available, :capacity, :location, :price, :rating)
  end
end
