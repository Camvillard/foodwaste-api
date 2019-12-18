class Leftover < ApplicationRecord
  belongs_to :shop

  monetize :price_cents
end
