class ReviewsController < ApplicationController
before_action :find_review, only: [ :show, :edit, :update, :destroy]
  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    # GET    /restaurants/:restaurant_id/reviews/new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    # POST   /restaurants/:restaurant_id/reviews
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @restaurant = Restaurant.new(params[:restaurant_id])
    @review.update
    redirect_to reviews_path
  end

  def destroy
    @review.destroy
    redirect_to reviews_path
  end

  private

  def  review_params
    params
    .require(:review)
    .permit(:content, :rating)
  end

  def find_review
    @review = Review.find(params[:id])
  end

end
