class OrdersController < ApplicationController

  def show
      @order = Order.find(params[:id])
      redirect_to "/" unless current_user && current_user.id == @order.user_id
  end

  def new

  end

  def create
    carted_weapons = current_user.current_cart
    order = Order.create(user_id: current_user.id)
    carted_weapons.update_all(status: "ordered", order_id: order.id)
    order.calculate_totals
    redirect_to "/orders/#{order.id}"
  end

end
