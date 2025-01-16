class FavouritesController < ApplicationController
  def create
    @car = Car.find(params[:car_id])
    if Favourite.exists?(car: @car)
      redirect_to car_path(@car), alert: 'This car is already in your garage!'
    else
      @favourite = Favourite.new(car: @car)
      if @favourite.save
        redirect_to car_path(@car), notice: 'Car successfully added to your garage!'
      else
        redirect_to car_path(@car), alert: 'Could not add this car to your garage.'
      end
    end
  end

  def index
    @favourites = Favourite.all
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to favourites_path, notice: 'Car removed from your garage.'
  end
end
