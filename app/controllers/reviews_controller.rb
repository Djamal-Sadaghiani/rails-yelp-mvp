class ReviewsController < ApplicationController
  before_action :find_restaurant, only: [ :new, :create]
  def index
  end

  def show
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new()
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant_id = @restaurant.id
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
