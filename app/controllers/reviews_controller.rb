class ReviewsController < ApplicationController
   def show
    @reviews = Review.all
   end

   def new
    # Need the restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    @review.save!
    redirect_to @review.restaurant
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
