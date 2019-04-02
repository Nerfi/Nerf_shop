class ReviewsController < ApplicationController

  def create

    def create
    @shirt = Shirt.find(params[:shirt_id])
    @review = Review.new(review_params)
    @review.shirt = @shirt
    if @review.save
      redirect_to shirt_path(@shirt)
    else
      render 'shirt/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

  end


end
