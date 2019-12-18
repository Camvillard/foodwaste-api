class Leftover < ApplicationRecord
  belongs_to :shop
  has_many :cart_leftovers

  monetize :price_cents
end
