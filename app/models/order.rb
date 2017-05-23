class Order < ApplicationRecord
  belongs_to :car, optional: true
  belongs_to :user
  has_many :carted_products

end
