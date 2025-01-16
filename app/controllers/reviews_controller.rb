class ReviewsController < ApplicationController
  def create
    @car = Car.find(params[:car_id])
    @review = @car.reviews.build(review_params)
    if @review.save
      redirect_to car_path(@car), notice: 'Review was successfully created.'
    else
      @reviews = @car.reviews.order(created_at: :desc)
      render 'cars/show', status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
