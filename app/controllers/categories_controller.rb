class CategoriesController < ApplicationController

  def cars
    @cars = Category[title: "car"].cars
    attribute = params[:sort]
    discount = params[:discount]
    if attribute = "low_to_high"
      @cars = Car.all.order(:price)
    end
    if attribute = "high_to_low"
      @cars = Car.all.order(price: :desc)
    end
    if discount
      @cars = Car.all.where("price < ?", 10000)
    end
    
    render "index.html.erb"
  end

  def motorcycles
    @cars = Category[title: "motorcycle"].cars
    attribute = params[:sort]
    discount = params[:discount]
    if attribute = "low_to_high"
      @cars = Car.all.order(:price)
    end
    if attribute = "high_to_low"
      @cars = Car.all.order(price: :desc)
    end
    if discount
      @cars = Car.all.where("price < ?", 10000)
    end
    
    render "index.html.erb"
  end

  def convertible
    @cars = Category[title: "convertible"].cars
    attribute = params[:sort]
    discount = params[:discount]
    if attribute = "low_to_high"
      @cars = Car.all.order(:price)
    end
    if attribute = "high_to_low"
      @cars = Car.all.order(price: :desc)
    end
    if discount
      @cars = Car.all.where("price < ?", 10000)
  end

  def sport
    @cars = Category[title: "sport"].cars
    attribute = params[:sort]
    discount = params[:discount]
    if attribute = "low_to_high"
      @cars = Car.all.order(:price)
    end
    if attribute = "high_to_low"
      @cars = Car.all.order(price: :desc)
    end
    if discount
      @cars = Car.all.where("price < ?", 10000)
  end

end
