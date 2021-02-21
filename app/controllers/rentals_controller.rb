class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  def new
    @rental = Rental.new
    @rental.stations.build
  end

  def create
  end

  def edit
  end
end
