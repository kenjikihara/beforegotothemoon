class ReviewsController < ApplicationController
  def index
    @reviews = Review.order(created_at: :desc).page(params[:page]).per(3)
  end
end
