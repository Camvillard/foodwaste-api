class CreateCartLeftovers < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_leftovers do |t|
      t.references :cart, foreign_key: true
      t.references :leftover, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
