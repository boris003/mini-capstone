class CartedProductsController < ApplicationController

  before_action :authenticate_user!

  def index
    @order = Order.find_by(user_id: current_user.id, completed: false)
    

    
    if @order.carted_products.length > 0
      @all_carted_products = @order.carted_products
      render "index.html.erb"
    else
      flash[:warning] = "You have nothing in your cart!"
      redirect_to "/"

    end
    
  end

  def create

    order = Order.find_by(user_id: current_user.id, completed: false)

    if order  
      
    else
        order = Order.create(
          user_id: current_user.id,
          completed: false 
          )

    end

    new_carted_product = CartedProduct.create(
      order_id: order.id,
      car_id: params[:car_id],
      quantity: params[:quantity].to_i
      )

    flash[:success] = "Carted Car! Order ID is: #{order.id}"
    redirect_to "/carted_products"   

  end

  def destroy
    product = CartedProduct.find_by(id: params[:id])
    product.destroy
    redirect_to "/carted_products"
  end



end
