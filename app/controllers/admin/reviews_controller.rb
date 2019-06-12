class Admin::ReviewsController < AdminController
  before_action :set_review, only: [:edit, :update, :destroy]

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @review.review_images.build
  end

  def create
    @review = Review.new(review_params)
    if params[:review][:review_images_attributes]["0"][:image].present?
      params[:review][:review_images_attributes]["0"][:image].each do |image|
        @review.review_images.new(image: image)
      end
    end
    @review.save(review_params)

    redirect_to admin_reviews_path, notice: '作成しました'
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to admin_reviews_path, notice: '更新しました'
    else
      render :index
    end
  end

  def destroy
    @review.destroy
    redirect_to admin_reviews_path, notice: '削除しました'
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:title, :content, :note, review_images_attributes: [])
  end
end
