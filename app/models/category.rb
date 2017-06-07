class Category < ApplicationRecord

  has_many :category_cars
  has_many :cars, through: :category_cars

  validates :title, uniqueness: true
end
