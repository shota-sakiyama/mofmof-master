class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  def new
    @rental = Rental.new
    @rental.stations.build
  end

  def create
    @rental = Rental.new(rentals_params)
    if @rental.save
      redirect_to rentals_path, notice: "物件を登録しました！"
    else
      render :new
    end
  end

  def edit
  end

  def rentals_params
    params.require(:rental).permit(
      :name,
      :rent,
      :address,
      :age,
      :note,
      stations_attributes: [
        :route,
        :name,
        :distance,
        :rentals_id,
        :id,
        :_destroy,
      ],
    )
  end
end
