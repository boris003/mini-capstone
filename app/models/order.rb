class Order < ApplicationRecord
  belongs_to :car, optional: true
  belongs_to :user

end
