class ReviewsController < ApplicationController
  before_action :require_login, only: [:create, :destroy]

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

    def review_params
      params.require(:review).permit(:content)
    end

end
