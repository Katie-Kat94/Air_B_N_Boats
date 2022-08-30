class BookingsController < ApplicationController
  before_action :set_boat, only: [:new, :create]

  def new
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.boat = @boat
    @booking.user = current_user
    if @booking.save
      redirect_to boats_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_boat
    @boat = Boat.find(params[:boat_id])
  end
end
