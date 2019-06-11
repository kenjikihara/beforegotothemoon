class ReviewsController < ApplicationController
  def index
    @reviews = Review.order(created_at: :desc).page(params[:page]).per(3)
  end
  def show
    @reviews = Review.order(created_at: :desc).page(params[:page]).per(1)
    @review = Review.find(params[:id])
  end
end
