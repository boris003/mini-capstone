class CartedProduct < ApplicationRecord
  belongs_to :order
  belongs_to :car
end
