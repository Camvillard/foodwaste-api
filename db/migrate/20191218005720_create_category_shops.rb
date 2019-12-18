class CreateCategoryShops < ActiveRecord::Migration[5.2]
  def change
    create_table :category_shops do |t|
      t.references :category, foreign_key: true
      t.references :shop, foreign_key: true

      t.timestamps
    end
  end
end
