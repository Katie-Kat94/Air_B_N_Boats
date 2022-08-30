class BookingsController < ApplicationController
  def new
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new
  end
end
