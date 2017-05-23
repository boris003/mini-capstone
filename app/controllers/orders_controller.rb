class OrdersController < ApplicationController

  def update
    order_id = params[:id]
    order = Order.find_by(id: order_id)
    subtotal = 0
    order.carted_products.each do |carted_product|
      subtotal += carted_product.car.price * carted_product.quantity
    end
    tax = subtotal * 0.09

    order.completed = true
    order
    order.tax = tax
    order.subtotal = subtotal
    order.total = subtotal + tax
    order.save
      
    flash[:success] = "You order has been placed!"
    redirect_to "/orders/#{order_id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
    render "show.html.erb"    
  end

end