class CreateLeftovers < ActiveRecord::Migration[5.2]
  def change
    create_table :leftovers do |t|
      t.string :name
      t.references :shop, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
