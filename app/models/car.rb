class Car < ApplicationRecord

	belongs_to :suplier
	has_many :images
	belongs_to :user
	has_many :orders
	has_many :category_cars
	has_many :categories, through: :category_cars
  has_many :carted_products

  validates :price, presence: true, numericality: true
  validates :make, presence: true
  validates :model, presence: true

  def car_title
    "#{car.year} #{car.make} #{car.model}"    
  end

  def sale_message
    if price.to_i < 2
      return "Discount Item"
    else
      return "Everyday Value"
    end   
  end

  def tax
    return price.to_i * 0.09    
  end

  def total
    return price.to_i + tax
  end

  
end