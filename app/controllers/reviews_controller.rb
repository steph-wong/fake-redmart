class ReviewsController < ApplicationController
  before_action :set_product, only: [:show, :create, :destroy]

  # def new
  #   @review = Review.new
  # end

  def show
    @review = Review.find(params[:id])
  end



  def create
    @review = current_user.reviews.build(permitted_review_params)

    respond_to do |format|
      if @review.save
        flash[:success] = "Review posted."
        redirect_to root_url
      else
        render '/home'
      end
    end
  end


  def destroy
  end

  private

    def set_review
      @review = Review.find(params[:id])
    end

    def permitted_review_params
      params.require(:review).permit(:content)
    end

end
