class RestaurantsController < ApplicationController
  # before_action :set_restaurant
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurants = Restaurant.all
    @restaurant = @restaurants.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
    redirect_to restaurants_path
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
    @restaurant.save
    redirect_to edit_restaurant_pathh
  end

  def update
    restaurant = Restaurant.find(params[:id])
    @restaurant.save
    redirect_to edit_restaurant_path
  end

  def destroy
  end

  private

  def restaurant_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
