class OrdersController < ApplicationController

  def create
    shirt = Shirt.find(params[:shirt_id])
    order = Order.create!(shirt_sku: shirt.sku, amount: shirt.price, state: 'pending', user: current_user)
    redirect_to new_order_payment_path(order)
  end

  def show
  @order = current_user.orders.where(state: 'paid').find(params[:id])

  end
end
