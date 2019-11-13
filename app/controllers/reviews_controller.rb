class ReviewsController < ApplicationController
  def index
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    # interestingly here... you need to add the @ to review and restaurant
    # becuase they are both used in render :new
    if @review.save
      redirect_to restaurant_path(@restaurant), notice: 'Your review was successfully created'
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end

