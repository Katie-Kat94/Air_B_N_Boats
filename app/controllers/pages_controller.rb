class PagesController < ApplicationController
  def home
    @boats = Boat.all
  end
end
