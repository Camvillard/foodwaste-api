class AddPriceToLeftover < ActiveRecord::Migration[5.2]
  def change
    add_monetize :leftovers, :price, currency: { present: false }
  end
end
