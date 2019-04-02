class ShirtsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @shirts = Shirt.all

  end

  def show
    @shirt = Shirt.find(params[:id])
    @review = Review.new

  end

end
