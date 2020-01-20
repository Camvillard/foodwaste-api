class Category < ApplicationRecord
  has_many :category_shops
  has_many :shops, through: :category_shops
end
