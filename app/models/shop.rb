class Shop < ApplicationRecord
  belongs_to :user
  has_many :category_shops
  has_many :categories, through: :category_shops
end
