class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_leftovers
  has_many :leftovers, through: :cart_leftovers
end
