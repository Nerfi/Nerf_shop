class ReviewsController < ApplicationController

     before_action :set_shirt, only: [ :show]


    def create
    @shirt = shirt.find(params[:shirt_id])
    @review = Review.new(review_params)
    @review.shirt = @shirt
    if @review.save!
      respond_to do |format|
    format.html  {redirect_to shirt_path(@shirt)}
    format.js # will render 'app/views/reviews/create.js.erb'
    end
  else
    respond_to do  |format|
       format.html {render 'shirts/show'}

       format.js # idem
     end
    end
  end





  private



  def review_params
    params.require(:review).permit(:content)
  end


  def set_shirt
    @shirt = Shirt.find(params[:id])
    authorize @shirt

  end


end
