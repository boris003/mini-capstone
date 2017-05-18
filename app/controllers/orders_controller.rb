class OrdersController < ApplicationController

  def create
    if current_user
      quantity = params[:quantity]
      product_id = params[:product_id]
      car = Car.find_by(id: product_id)
      subtotal = car.price * quantity
      tax = subtotal * 0.09
      total = tax + subtotal

      new_order = Order.create(
        quantity: params[:quantity], 
        product_id: product_id, 
        subtotal: subtotal, 
        tax: tax,
        total: total,
        user_id: current_user.id
        )
      
      flash[:success] = "We got your order. We will contact you.. Maybe.."
      flash[:info] = "Your order id is #{new_order.product_id}. We don't have deluvery, so you'll have to pick it up from Union City Bart station parking"
      redirect_to "/"
    else
      flash[:warning] = "Too bad! You have to Log In first!"
      redirect_to "/login"
    end
  end

end