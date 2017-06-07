class CartedProduct < ApplicationRecord
  belongs_to :order
  belongs_to :car

  validates :quantity, presence: true, numericality: { greater_than: 0 }

end
