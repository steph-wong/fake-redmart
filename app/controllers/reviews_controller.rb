class ReviewsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def new
    @review = Review.new
  end

  def show
  end

  def create
    @review = current_user.reviews.build(review_params)
    if @review.save
      flash[:success] = "Review posted."
      redirect_to root_url
    else
      render '/home'
    end
  end

  def destroy
  end

  private

    def set_review
      @review = Review.find(params[:id])
    end

    def review_params
      params.require(:review).permit(:content)
    end

end
