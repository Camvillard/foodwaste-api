class CartLeftover < ApplicationRecord
  belongs_to :cart
  belongs_to :leftover
end
