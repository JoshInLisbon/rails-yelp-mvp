class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all.order(created_at: :desc)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews.order(created_at: :desc)
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(rest_params)

    if @restaurant.save
      redirect_to restaurants_path
    else
      render :new
    end
  end

  private

  def rest_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end


# create_table "restaurants", force: :cascade do |t|
#   t.string "name"
#   t.string "address"
#   t.string "phone_number"
#   t.string "category"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
