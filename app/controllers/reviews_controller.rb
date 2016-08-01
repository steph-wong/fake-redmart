class ReviewsController < ApplicationController


  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = current_user.reviews.build(permitted_review_params)
    # @product.review << @review
    @review.save

      if @review.save
        flash[:success] = "Review posted."
        redirect_to products_url
      else
        flash[:danger] = "Review error."
        redirect_to products_url
      end
    end


  def destroy
  end

  private

    def permitted_review_params
      params.require(:review).permit(:content)
    end

end
